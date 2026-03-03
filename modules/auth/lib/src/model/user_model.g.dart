// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  partyId: json['partyId'] as String?,
  pseudoId: json['pseudoId'] as String?,
  role: const RoleConverter().fromJson(json['role'] as String?),
  userId: json['userId'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  loginDisabled: json['loginDisabled'] as bool?,
  loginName: json['loginName'] as String?,
  fullName: json['fullName'] as String?,
  email: json['email'] as String?,
  url: json['url'] as String?,
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  paymentMethod: json['paymentMethod'] == null
      ? null
      : PaymentMethod.fromJson(json['paymentMethod'] as Map<String, dynamic>),
  telephoneNr: json['telephoneNr'] as String?,
  userGroup: const UserGroupConverter().fromJson(json['userGroup'] as String?),
  language: json['language'] as String? ?? 'EN',
  currency: json['currency'] as String? ?? 'THB',
  timeZoneOffset: json['timeZoneOffset'] as String?,
  image: const Uint8ListConverter().fromJson(json['image'] as String?),
  company: json['company'] == null
      ? null
      : Company.fromJson(json['company'] as Map<String, dynamic>),
  appsUsed:
      (json['appsUsed'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'partyId': instance.partyId,
  'pseudoId': instance.pseudoId,
  'role': const RoleConverter().toJson(instance.role),
  'userId': instance.userId,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'loginDisabled': instance.loginDisabled,
  'loginName': instance.loginName,
  'fullName': instance.fullName,
  'email': instance.email,
  'url': instance.url,
  'address': instance.address,
  'paymentMethod': instance.paymentMethod,
  'telephoneNr': instance.telephoneNr,
  'userGroup': const UserGroupConverter().toJson(instance.userGroup),
  'language': instance.language,
  'currency': instance.currency,
  'timeZoneOffset': instance.timeZoneOffset,
  'image': const Uint8ListConverter().toJson(instance.image),
  'company': instance.company,
  'appsUsed': instance.appsUsed,
};

_Users _$UsersFromJson(Map<String, dynamic> json) => _Users(
  users:
      (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$UsersToJson(_Users instance) => <String, dynamic>{
  'users': instance.users,
};
