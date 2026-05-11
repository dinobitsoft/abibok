// This is a basic Flutter widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auth/auth.dart';

import 'package:abibok/main.dart';

// Mock for AuthBloc
class MockAuthBloc extends Mock implements AuthBloc {}

// Fallback for mocktail
class FakeAuthEvent extends Fake implements AuthEvent {}

void main() {
  late MockAuthBloc authBloc;

  setUpAll(() {
    registerFallbackValue(FakeAuthEvent());
  });

  setUp(() {
    authBloc = MockAuthBloc();
    when(
      () => authBloc.stream,
    ).thenAnswer((_) => const Stream<AuthState>.empty());
    when(() => authBloc.state).thenReturn(const AuthState());
  });

  testWidgets('App renders without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(
      BlocProvider<AuthBloc>.value(value: authBloc, child: const MyApp()),
    );
    await tester.pump();

    // Verify that MaterialApp is present
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
