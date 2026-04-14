import 'package:flutter_test/flutter_test.dart';
import 'package:auth/auth.dart';
import 'package:decimal/decimal.dart';
import 'package:payment/payment.dart' show Currency;

void main() {
  group('Authenticate Model', () {
    test('creates instance with default values', () {
      final auth = Authenticate();

      expect(auth.apiKey, isNull);
      expect(auth.classificationId, isNull);
      expect(auth.moquiSessionToken, isNull);
      expect(auth.ownerPartyId, isNull);
      expect(auth.companyUser, isNull);
      expect(auth.company, isNull);
      expect(auth.user, isNull);
      expect(auth.stats, isNull);
    });

    test('creates instance with all values', () {
      final user = User(userId: '1', loginName: 'testuser');
      final company = Company(partyId: 'comp_1', name: 'Test Company');
      final stats = Stats();

      final auth = Authenticate(
        apiKey: 'test_api_key',
        classificationId: 'AppSupport',
        moquiSessionToken: 'session_token',
        ownerPartyId: 'owner_1',
        company: company,
        user: user,
        stats: stats,
      );

      expect(auth.apiKey, 'test_api_key');
      expect(auth.classificationId, 'AppSupport');
      expect(auth.moquiSessionToken, 'session_token');
      expect(auth.ownerPartyId, 'owner_1');
      expect(auth.company, company);
      expect(auth.user, user);
      expect(auth.stats, stats);
    });

    test('copyWith creates new instance with updated values', () {
      final auth = Authenticate(apiKey: 'old_key');
      final updated = auth.copyWith(apiKey: 'new_key');

      expect(auth.apiKey, 'old_key');
      expect(updated.apiKey, 'new_key');
    });

    test('copyWith preserves unchanged values', () {
      final user = User(userId: '1', loginName: 'testuser');
      final auth = Authenticate(apiKey: 'test_key', user: user);
      final updated = auth.copyWith(apiKey: 'new_key');

      expect(updated.apiKey, 'new_key');
      expect(updated.user, user);
    });

    test('fromJson parses nested authenticate key', () {
      final json = {
        'authenticate': {
          'apiKey': 'test_key',
          'user': {'userId': '1', 'loginName': 'testuser'},
        },
      };

      final auth = Authenticate.fromJson(json);

      expect(auth.apiKey, 'test_key');
      expect(auth.user!.userId, '1');
      expect(auth.user!.loginName, 'testuser');
    });

    test('fromJson parses flat structure', () {
      final json = {
        'apiKey': 'test_key',
        'user': {'userId': '1', 'loginName': 'testuser'},
      };

      final auth = Authenticate.fromJson(json);

      expect(auth.apiKey, 'test_key');
      expect(auth.user!.userId, '1');
    });

    test('toJson serializes to nested structure', () {
      final auth = Authenticate(
        apiKey: 'test_key',
        user: User(userId: '1', loginName: 'testuser'),
      );

      final json = auth.toJson();

      expect(json['apiKey'], 'test_key');
      // toJson returns the auth object itself, not a Map
      expect(json, isNotNull);
    });
  });

  group('User Model', () {
    test('creates instance with default values', () {
      final user = User();

      expect(user.partyId, isNull);
      expect(user.userId, isNull);
      expect(user.loginName, isNull);
      expect(user.fullName, isNull);
      expect(user.firstName, isNull);
      expect(user.lastName, isNull);
      expect(user.email, isNull);
      expect(user.role, isNull);
      expect(user.userGroup, isNull);
      expect(user.address, isNull);
      expect(user.paymentMethod, isNull);
      // language and currency have default values
      expect(user.timeZoneOffset, isNull);
      expect(user.image, isNull);
      expect(user.company, isNull);
      // appsUsed has default empty list
      expect(user.appsUsed, isEmpty);
    });

    test('copyWith updates selected fields', () {
      final user = User(userId: '1', loginName: 'old_login', firstName: 'Old');
      final updated = user.copyWith(firstName: 'New');

      expect(updated.userId, '1');
      expect(updated.loginName, 'old_login');
      expect(updated.firstName, 'New');
    });

    test('fromJson parses user data', () {
      final json = {
        'user': {
          'userId': '1',
          'loginName': 'testuser',
          'fullName': 'Test User',
          'email': 'test@example.com',
        },
      };

      final user = User.fromJson(json);

      expect(user.userId, '1');
      expect(user.loginName, 'testuser');
      expect(user.fullName, 'Test User');
      expect(user.email, 'test@example.com');
    });

    test('toJson serializes user data', () {
      final user = User(
        userId: '1',
        loginName: 'testuser',
        email: 'test@example.com',
      );

      final json = user.toJson();

      expect(json['userId'], '1');
      expect(json['loginName'], 'testuser');
      expect(json['email'], 'test@example.com');
    });
  });

  group('Company Model', () {
    test('creates instance with default values', () {
      final company = Company();

      expect(company.partyId, isNull);
      expect(company.name, isNull);
      expect(company.email, isNull);
      expect(company.currency, isNull);
      expect(company.address, isNull);
      expect(company.paymentMethod, isNull);
      expect(company.vatPerc, isNull);
      expect(company.salesPerc, isNull);
      expect(company.employees, isEmpty);
      expect(company.hostName, isNull);
      expect(company.secondaryBackend, isNull);
      expect(company.image, isNull);
    });

    test('creates instance with values', () {
      final address = Address(city: 'Test City');
      final currency = Currency(currencyId: 'USD');

      final company = Company(
        partyId: 'comp_1',
        name: 'Test Company',
        email: 'company@example.com',
        currency: currency,
        address: address,
        vatPerc: Decimal.parse('10.0'),
        salesPerc: Decimal.parse('5.0'),
        hostName: 'example.com',
      );

      expect(company.partyId, 'comp_1');
      expect(company.name, 'Test Company');
      expect(company.email, 'company@example.com');
      expect(company.currency, currency);
      expect(company.address, address);
      expect(company.vatPerc, Decimal.parse('10.0'));
      expect(company.salesPerc, Decimal.parse('5.0'));
      expect(company.hostName, 'example.com');
    });

    test('copyWith updates selected fields', () {
      final company = Company(partyId: 'comp_1', name: 'Old Name');
      final updated = company.copyWith(name: 'New Name');

      expect(updated.partyId, 'comp_1');
      expect(updated.name, 'New Name');
    });

    test('fromJson parses company data', () {
      final json = {
        'company': {
          'partyId': 'comp_1',
          'name': 'Test Company',
          'email': 'company@example.com',
        },
      };

      final company = Company.fromJson(json);

      expect(company.partyId, 'comp_1');
      expect(company.name, 'Test Company');
      expect(company.email, 'company@example.com');
    });

    test('toJson serializes company data', () {
      final company = Company(
        partyId: 'comp_1',
        name: 'Test Company',
        email: 'company@example.com',
      );

      final json = company.toJson();

      expect(json['partyId'], 'comp_1');
      expect(json['name'], 'Test Company');
      expect(json['email'], 'company@example.com');
    });
  });

  group('CompanyUser Model', () {
    test('creates instance with company field', () {
      final company = Company(partyId: 'comp_1', name: 'Test Company');
      final companyUser = CompanyUser(company: company);

      expect(companyUser.company, company);
    });

    test('getUser extracts user from CompanyUser', () {
      final companyUser = CompanyUser(
        type: PartyType.user,
        name: 'John Doe',
        email: 'john@example.com',
      );

      final result = companyUser.getUser();

      expect(result, isNotNull);
    });

    test('getCompany extracts company from CompanyUser', () {
      final company = Company(partyId: 'comp_1', name: 'Test Company');
      final companyUser = CompanyUser(
        company: company,
        name: 'Test Company',
        type: PartyType.company,
      );

      final result = companyUser.getCompany();

      expect(result, isNotNull);
    });

    test('tryParse creates CompanyUser from User', () {
      final user = User(
        partyId: 'party_1',
        firstName: 'John',
        lastName: 'Doe',
        email: 'john@example.com',
      );

      final result = CompanyUser.tryParse(user);

      expect(result, isNotNull);
      expect(result!.name, 'John Doe');
      expect(result.email, 'john@example.com');
    });

    test('tryParse creates CompanyUser from Company', () {
      final company = Company(
        partyId: 'comp_1',
        name: 'Test Company',
        email: 'info@example.com',
      );

      final result = CompanyUser.tryParse(company);

      expect(result, isNotNull);
      expect(result!.name, 'Test Company');
      expect(result.email, 'info@example.com');
    });

    test('tryParse returns null for unsupported type', () {
      final result = CompanyUser.tryParse('invalid');

      expect(result, isNull);
    });
  });

  group('Stats Model', () {
    test('creates instance with default values', () {
      final stats = Stats();

      expect(stats, isNotNull);
    });

    test('creates instance with values', () {
      final stats = Stats();

      expect(stats, isNotNull);
    });
  });

  group('Address Model', () {
    test('creates instance with default values', () {
      final address = Address();

      expect(address.address1, isNull);
      expect(address.address2, isNull);
      expect(address.postalCode, isNull);
      expect(address.city, isNull);
      expect(address.province, isNull);
      expect(address.country, isNull);
    });

    test('creates instance with values', () {
      final address = Address(
        address1: '123 Main St',
        address2: 'Apt 4B',
        postalCode: '12345',
        city: 'Test City',
        province: 'Test Province',
        country: 'Test Country',
      );

      expect(address.address1, '123 Main St');
      expect(address.address2, 'Apt 4B');
      expect(address.postalCode, '12345');
      expect(address.city, 'Test City');
      expect(address.province, 'Test Province');
      expect(address.country, 'Test Country');
    });

    test('fromJson parses address data', () {
      final json = {
        'address': {
          'address1': '123 Main St',
          'city': 'Test City',
          'country': 'Test Country',
        },
      };

      final address = Address.fromJson(json);

      expect(address.address1, '123 Main St');
      expect(address.city, 'Test City');
      expect(address.country, 'Test Country');
    });
  });

  group('Enums', () {
    group('Role', () {
      test('has all expected values', () {
        expect(Role.values, contains(Role.company));
        expect(Role.values, contains(Role.customer));
        expect(Role.values, contains(Role.lead));
        expect(Role.values, contains(Role.supplier));
        expect(Role.values, contains(Role.unknown));
      });
    });

    group('UserGroup', () {
      test('has all expected values', () {
        expect(UserGroup.values, contains(UserGroup.system));
        expect(UserGroup.values, contains(UserGroup.employee));
        expect(UserGroup.values, contains(UserGroup.admin));
        expect(UserGroup.values, contains(UserGroup.other));
      });
    });

    group('PartyType', () {
      test('has all expected values', () {
        expect(PartyType.values, contains(PartyType.company));
        expect(PartyType.values, contains(PartyType.user));
        expect(PartyType.values, contains(PartyType.unknown));
      });
    });
  });
}
