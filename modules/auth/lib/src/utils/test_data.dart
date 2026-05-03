import 'package:auth/auth.dart';
import 'dart:convert';

class TestData {
  static final Authenticate testAuthenticate = Authenticate(
    apiKey: 'test_api_key_123',
    classificationId: 'AppSupport',
    user: User(
      userId: 'user_123',
      loginName: 'testuser',
      firstName: 'Test',
      lastName: 'User',
      email: 'test@example.com',
      userGroup: UserGroup.admin,
    ),
    company: Company(
      partyId: 'company_123',
      name: 'Test Company',
      email: 'company@test.com',
    ),
  );

  static final Companies testCompanies = Companies.fromJson({
    'companies': [
      {
        'partyId': 'company_123',
        'name': 'Test Company',
        'email': 'company@test.com',
      },
      {
        'partyId': 'company_456',
        'name': 'Another Test Company',
        'email': 'contact@test.com',
      }
    ]
  });

  static final Users testUsers = Users.fromJson({
    'users': [
      {
        'userId': 'user_123',
        'loginName': 'testuser',
        'firstName': 'Test',
        'lastName': 'User',
        'email': 'test@example.com',
        'userGroup': 'admin',
      }
    ]
  });

  static String getValidJsonResponse(String endpoint) {
    switch (endpoint) {
      case '/rest/s1/abk/100/Authenticate':
        return jsonEncode(testAuthenticate.toJson());
      case '/rest/s1/abk/100/Companies':
        return jsonEncode(testCompanies.toJson());
      case '/rest/s1/abk/100/User':
        return jsonEncode(testUsers.toJson());
      default:
        return jsonEncode({'status': 'success'});
    }
  }
}