import 'dart:typed_data';

import 'package:auth/auth.dart';
import 'package:auth/src/model/role_converter.dart'
    show RoleConverter, UserGroupConverter, Uint8ListConverter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payment/payment.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class User with _$User {
  factory User({
    String? partyId, // allocated by system cannot be changed.
    String? pseudoId,
    @RoleConverter() Role? role,
    String? userId, // allocated by system cannot be changed.
    String? firstName,
    String? lastName,

    /// login account
    bool? loginDisabled,
    String? loginName,
    String? fullName,

    /// email address of this person
    String? email,

    /// website address of this person
    String? url,

    /// postal address and payment method
    Address? address,
    PaymentMethod? paymentMethod,

    /// when customer register they can give their telephonenr to use as membername
    String? telephoneNr,

    /// admin, employee, customer, supplier etc...
    @UserGroupConverter() UserGroup? userGroup,
    // the localization variables
    @Default('EN') String language,
    @Default('THB') String currency,
    String? timeZoneOffset,
    @Uint8ListConverter() Uint8List? image,
    Company? company,

    /// field is used to see of a user registered with an app,
    /// when not will show the extra info screen at first login.
    @Default([]) List<String> appsUsed,
  }) = _User;
  User._();

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json['user'] ?? json);

  @override
  String toString() {
    var userString =
        'User $firstName $lastName [$partyId] sec: $userGroup '
        ' email: $email';
    var companyString = '';
    if (company != null) {
      companyString =
          'company: ${company!.name}[${company!.partyId}] size: ${image?.length}';
    }
    var methodString = '';
    if (paymentMethod != null) {
      methodString = "pay method: ${paymentMethod?.ccDescription}";
    }
    return '$userString $companyString $methodString';
  }

  String getName() => '$lastName, $firstName';
}

@freezed
abstract class Users with _$Users {
  factory Users({@Default([]) List<User> users}) = _Users;
  Users._();

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}
