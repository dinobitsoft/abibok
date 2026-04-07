import 'package:flutter_test/flutter_test.dart';
import 'package:auth/auth.dart';
import 'package:auth/src/utils/persist_functions.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('PersistFunctions', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    group('persistKeyValue', () {
      test('saves key-value pair to SharedPreferences', () async {
        await PersistFunctions.persistKeyValue('test_key', 'test_value');

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('test_key'), 'test_value');
      });

      test('overwrites existing value', () async {
        await PersistFunctions.persistKeyValue('test_key', 'old_value');
        await PersistFunctions.persistKeyValue('test_key', 'new_value');

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('test_key'), 'new_value');
      });
    });

    group('removeKey', () {
      test('removes key from SharedPreferences', () async {
        await PersistFunctions.persistKeyValue('test_key', 'test_value');
        await PersistFunctions.removeKey('test_key');

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('test_key'), isNull);
      });
    });

    group('persistAuthenticate', () {
      test('saves Authenticate to SharedPreferences', () async {
        final auth = Authenticate(
          apiKey: 'test_api_key',
          user: User(
            userId: '1',
            loginName: 'testuser',
            email: 'test@example.com',
          ),
          company: Company(
            partyId: 'comp_1',
            name: 'Test Company',
          ),
        );

        await PersistFunctions.persistAuthenticate(auth);

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('authenticate'), isNotNull);
      });

      test('removes apiKey when it is null', () async {
        final auth = Authenticate(apiKey: null);

        await PersistFunctions.persistAuthenticate(auth);

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('apiKey'), isNull);
      });

      test('removes apiKey when it is empty', () async {
        final auth = Authenticate(apiKey: '');

        await PersistFunctions.persistAuthenticate(auth);

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('apiKey'), isNull);
      });

      test('handles errors gracefully', () async {
        final auth = Authenticate(
          apiKey: 'test_key',
          user: User(userId: '1'),
        );

        // Should not throw even with complex nested data
        await expectLater(
          PersistFunctions.persistAuthenticate(auth),
          completes,
        );
      });
    });

    group('getAuthenticate', () {
      test('returns null when no stored authenticate', () async {
        final result = await PersistFunctions.getAuthenticate();

        expect(result, isNull);
      });

      test('returns stored Authenticate', () async {
        final auth = Authenticate(
          apiKey: 'test_api_key',
          user: User(
            userId: '1',
            loginName: 'testuser',
          ),
        );

        await PersistFunctions.persistAuthenticate(auth);
        final result = await PersistFunctions.getAuthenticate();

        expect(result, isNotNull);
        expect(result!.apiKey, 'test_api_key');
        expect(result.user!.userId, '1');
        expect(result.user!.loginName, 'testuser');
      });

      test('returns null on malformed JSON', () async {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('authenticate', 'invalid_json');

        final result = await PersistFunctions.getAuthenticate();

        expect(result, isNull);
      });

      test('returns null on empty string', () async {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('authenticate', '');

        final result = await PersistFunctions.getAuthenticate();

        expect(result, isNull);
      });
    });

    group('removeAuthenticate', () {
      test('removes authenticate from SharedPreferences', () async {
        final auth = Authenticate(apiKey: 'test_key');
        await PersistFunctions.persistAuthenticate(auth);

        await PersistFunctions.removeAuthenticate();

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getString('authenticate'), isNull);
      });

      test('can be called when no authenticate exists', () async {
        await expectLater(
          PersistFunctions.removeAuthenticate(),
          completes,
        );
      });
    });

    group('integration', () {
      test('full lifecycle: save, retrieve, remove', () async {
        final auth = Authenticate(
          apiKey: 'test_api_key',
          user: User(
            userId: '1',
            loginName: 'testuser',
            fullName: 'Test User',
          ),
          company: Company(
            partyId: 'comp_1',
            name: 'Test Company',
          ),
        );

        // Save
        await PersistFunctions.persistAuthenticate(auth);
        var retrieved = await PersistFunctions.getAuthenticate();
        expect(retrieved, isNotNull);
        expect(retrieved!.apiKey, 'test_api_key');

        // Remove
        await PersistFunctions.removeAuthenticate();
        retrieved = await PersistFunctions.getAuthenticate();
        expect(retrieved, isNull);
      });

      test('multiple saves update the stored value', () async {
        final auth1 = Authenticate(apiKey: 'key_1');
        final auth2 = Authenticate(apiKey: 'key_2');

        await PersistFunctions.persistAuthenticate(auth1);
        await PersistFunctions.persistAuthenticate(auth2);

        final retrieved = await PersistFunctions.getAuthenticate();
        expect(retrieved!.apiKey, 'key_2');
      });
    });
  });
}
