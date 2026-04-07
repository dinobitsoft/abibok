import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:auth/auth.dart';
import 'package:chat/src/views/chat_home_page.dart';

// ── Mocks ──────────────────────────────────────────────────────────────────

class _MockAuthBloc extends Mock implements AuthBloc {}

// ── Fallback для mocktail ──────────────────────────────────────────────────

class _FakeAuthEvent extends Fake implements AuthEvent {}

// ── Helpers ────────────────────────────────────────────────────────────────

/// Отправляет сообщение и проматывает таймер авто-ответа.
Future<void> sendMessage(WidgetTester tester, String text) async {
  await tester.enterText(find.byType(TextField), text);
  await tester.tap(find.byIcon(Icons.send));
  // Проматываем 1-секунный таймер авто-ответа
  await tester.pump(const Duration(seconds: 1));
}

// ── Tests ──────────────────────────────────────────────────────────────────

void main() {
  late _MockAuthBloc authBloc;

  setUpAll(() {
    registerFallbackValue(_FakeAuthEvent());
  });

  setUp(() {
    authBloc = _MockAuthBloc();
    when(
      () => authBloc.stream,
    ).thenAnswer((_) => const Stream<AuthState>.empty());
    when(() => authBloc.state).thenReturn(const AuthState());
  });

  Widget _buildWithProviders() {
    return MaterialApp(
      home: BlocProvider<AuthBloc>.value(
        value: authBloc,
        child: const ChatHomePage(),
      ),
    );
  }

  group('ChatHomePage widget', () {
    testWidgets('отображает заголовок "Chat"', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      expect(find.text('Chat'), findsOneWidget);
    });

    testWidgets('отображает кнопку logout', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      expect(find.byIcon(Icons.logout), findsOneWidget);
    });

    testWidgets('отображает поле ввода и кнопку отправки', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.send), findsOneWidget);
    });

    testWidgets('пустое сообщение не добавляется в список', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      await tester.tap(find.byIcon(Icons.send));
      await tester.pump();
      // ListView пуст — сообщений нет
      final listView = tester.widget<ListView>(find.byType(ListView));
      expect(listView.semanticChildCount, 0);
    });

    testWidgets('отправленное сообщение появляется в чате', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      await sendMessage(tester, 'Привет');
      expect(find.text('Привет'), findsOneWidget);
    });

    testWidgets('моё сообщение выровнено вправо', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      await sendMessage(tester, 'Тест');

      final align = tester.widget<Align>(find.byType(Align).first);
      expect(align.alignment, Alignment.centerRight);
    });

    testWidgets('авто-ответ появляется через ~1 секунду', (tester) async {
      await tester.pumpWidget(_buildWithProviders());

      await tester.enterText(find.byType(TextField), 'Hello');
      await tester.tap(find.byIcon(Icons.send));
      await tester.pump();

      expect(find.textContaining('Авто-ответ:'), findsNothing);

      await tester.pump(const Duration(seconds: 1));

      expect(find.textContaining('Авто-ответ:'), findsOneWidget);
    });

    testWidgets('авто-ответ выровнен влево', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      await sendMessage(tester, 'Hi');

      // Находим Align, содержащий текст авто-ответа
      final textFinder = find.textContaining('Авто-ответ:');
      final container = find.ancestor(
        of: textFinder,
        matching: find.byType(Align),
      );
      final align = tester.widget<Align>(container.first);
      expect(align.alignment, Alignment.centerLeft);
    });

    testWidgets('поле ввода очищается после отправки', (tester) async {
      await tester.pumpWidget(_buildWithProviders());
      await sendMessage(tester, 'Тест');

      final textField = tester.widget<TextField>(find.byType(TextField));
      expect(textField.controller!.text, isEmpty);
    });

    testWidgets('кнопка logout отправляет AuthLoggedOut', (tester) async {
      when(() => authBloc.add(any())).thenReturn(null);

      await tester.pumpWidget(_buildWithProviders());
      await tester.tap(find.byIcon(Icons.logout));
      await tester.pump();

      verify(() => authBloc.add(any(that: isA<AuthLoggedOut>()))).called(1);
    });

    testWidgets('отправка сообщения по Enter', (tester) async {
      await tester.pumpWidget(_buildWithProviders());

      await tester.enterText(find.byType(TextField), 'Enter test');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump(const Duration(seconds: 1));

      expect(find.text('Enter test'), findsOneWidget);
    });

    testWidgets('несколько сообщений отображаются корректно', (tester) async {
      await tester.pumpWidget(_buildWithProviders());

      await sendMessage(tester, 'One');
      await sendMessage(tester, 'Two');

      expect(find.text('One'), findsOneWidget);
      expect(find.text('Two'), findsOneWidget);
    });
  });
}
