import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ── Initialize Flutter binding ─────────────────────────────────────────────

// ── Mocks ──────────────────────────────────────────────────────────────────

class _MockAuthRestClient extends Mock implements AuthRestClient {}

// ── Fallback для mocktail ──────────────────────────────────────────────────

class _FakeAuthEvent extends Fake implements AuthEvent {}

// ── Test Data ──────────────────────────────────────────────────────────────

final _testUser = User(
  userId: '1',
  loginName: 'testuser',
  fullName: 'Test User',
  firstName: 'Test',
  lastName: 'User',
  email: 'test@example.com',
  userGroup: UserGroup.admin,
);

final _testCompany = Company(
  partyId: 'company_1',
  name: 'Test Company',
  email: 'company@example.com',
);

final _testAuthenticate = Authenticate(
  apiKey: 'test_api_key',
  user: _testUser,
  company: _testCompany,
  classificationId: 'AppSupport',
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late _MockAuthRestClient restClient;
  late AuthBloc authBloc;

  setUpAll(() {
    registerFallbackValue(_FakeAuthEvent());
    SharedPreferences.setMockInitialValues({});
  });

  setUp(() {
    restClient = _MockAuthRestClient();
    SharedPreferences.setMockInitialValues({});
    authBloc = AuthBloc(restClient, 'AppSupport', null);
  });

  tearDown(() {
    authBloc.close();
  });

  group('AuthBloc', () {
    group('AuthLogin', () {
      blocTest<AuthBloc, AuthState>(
        'emits [loading, authenticated] on successful login (demo mode)',
        build: () => authBloc,
        act: (bloc) => bloc.add(const AuthLogin('testuser', 'password123')),
        wait: const Duration(milliseconds: 600),
        expect: () => [
          isA<AuthState>().having(
            (s) => s.status,
            'status',
            AuthStatus.loading,
          ),
          isA<AuthState>()
              .having((s) => s.status, 'status', AuthStatus.authenticated)
              .having(
                (s) => s.authenticate!.user!.loginName,
                'loginName',
                'testuser',
              )
              .having((s) => s.message, 'message', 'You are logged in now...'),
        ],
      );
    });

    group('AuthResetPassword', () {
      blocTest<AuthBloc, AuthState>(
        'emits [sendPassword, unAuthenticated] on successful reset',
        setUp: () {
          when(
            () => restClient.resetPassword(username: any(named: 'username')),
          ).thenAnswer((_) async => 'OK');
        },
        build: () => authBloc,
        act: (bloc) =>
            bloc.add(const AuthResetPassword(username: 'test@example.com')),
        expect: () => [
          isA<AuthState>().having(
            (s) => s.status,
            'status',
            AuthStatus.sendPassword,
          ),
          isA<AuthState>()
              .having((s) => s.status, 'status', AuthStatus.unAuthenticated)
              .having(
                (s) => s.message,
                'message',
                contains('test@example.com'),
              ),
        ],
      );

      blocTest<AuthBloc, AuthState>(
        'emits [sendPassword, failure] on reset error',
        setUp: () {
          when(
            () => restClient.resetPassword(username: any(named: 'username')),
          ).thenThrow(
            DioException(
              requestOptions: RequestOptions(path: '/ResetPassword'),
              message: 'User not found',
            ),
          );
        },
        build: () => authBloc,
        act: (bloc) =>
            bloc.add(const AuthResetPassword(username: 'notfound@example.com')),
        expect: () => [
          isA<AuthState>().having(
            (s) => s.status,
            'status',
            AuthStatus.sendPassword,
          ),
          isA<AuthState>()
              .having((s) => s.status, 'status', AuthStatus.failure)
              .having((s) => s.message, 'message', isNotEmpty),
        ],
      );
    });

    group('AuthUpdateLocal', () {
      blocTest<AuthBloc, AuthState>(
        'updates authenticate in state',
        build: () => authBloc,
        act: (bloc) => bloc.add(AuthUpdateLocal(_testAuthenticate)),
        expect: () => [
          isA<AuthState>()
              .having((s) => s.authenticate!.apiKey, 'apiKey', 'test_api_key')
              .having((s) => s.authenticate!.user!.userId, 'userId', '1'),
        ],
      );
    });
  });
}
