// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyUser _$CompanyUserFromJson(Map<String, dynamic> json) => _CompanyUser(
  type: const PartyTypeConverter().fromJson(json['type'] as String?),
  partyId: json['partyId'] as String?,
  pseudoId: json['pseudoId'] as String?,
  role: const RoleConverter().fromJson(json['role'] as String?),
  image: const Uint8ListConverter().fromJson(json['image'] as String?),
  name: json['name'] as String?,
  email: json['email'] as String?,
  url: json['url'] as String?,
  telephoneNr: json['telephoneNr'] as String?,
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  paymentMethod: json['paymentMethod'] == null
      ? null
      : PaymentMethod.fromJson(json['paymentMethod'] as Map<String, dynamic>),
  company: json['company'] == null
      ? null
      : Company.fromJson(json['company'] as Map<String, dynamic>),
  employees: (json['employees'] as List<dynamic>?)
      ?.map((e) => User.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CompanyUserToJson(_CompanyUser instance) =>
    <String, dynamic>{
      'type': const PartyTypeConverter().toJson(instance.type),
      'partyId': instance.partyId,
      'pseudoId': instance.pseudoId,
      'role': const RoleConverter().toJson(instance.role),
      'image': const Uint8ListConverter().toJson(instance.image),
      'name': instance.name,
      'email': instance.email,
      'url': instance.url,
      'telephoneNr': instance.telephoneNr,
      'address': instance.address,
      'paymentMethod': instance.paymentMethod,
      'company': instance.company,
      'employees': instance.employees,
    };
