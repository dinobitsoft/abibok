// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
  partyId: json['partyId'] as String?,
  pseudoId: json['pseudoId'] as String?,
  role: const RoleConverter().fromJson(json['role'] as String?),
  name: json['name'] as String?,
  email: json['email'] as String?,
  url: json['url'] as String?,
  telephoneNr: json['telephoneNr'] as String?,
  currency: json['currency'] == null
      ? null
      : Currency.fromJson(json['currency'] as Map<String, dynamic>),
  image: const Uint8ListConverter().fromJson(json['image'] as String?),
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  paymentMethod: json['paymentMethod'] == null
      ? null
      : PaymentMethod.fromJson(json['paymentMethod'] as Map<String, dynamic>),
  vatPerc: json['vatPerc'] == null
      ? null
      : Decimal.fromJson(json['vatPerc'] as String),
  salesPerc: json['salesPerc'] == null
      ? null
      : Decimal.fromJson(json['salesPerc'] as String),
  employees:
      (json['employees'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  hostName: json['hostName'] as String?,
  secondaryBackend: json['secondaryBackend'] as String?,
);

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
  'partyId': instance.partyId,
  'pseudoId': instance.pseudoId,
  'role': const RoleConverter().toJson(instance.role),
  'name': instance.name,
  'email': instance.email,
  'url': instance.url,
  'telephoneNr': instance.telephoneNr,
  'currency': instance.currency,
  'image': const Uint8ListConverter().toJson(instance.image),
  'address': instance.address,
  'paymentMethod': instance.paymentMethod,
  'vatPerc': instance.vatPerc,
  'salesPerc': instance.salesPerc,
  'employees': instance.employees,
  'hostName': instance.hostName,
  'secondaryBackend': instance.secondaryBackend,
};

_Companies _$CompaniesFromJson(Map<String, dynamic> json) => _Companies(
  companies:
      (json['companies'] as List<dynamic>?)
          ?.map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CompaniesToJson(_Companies instance) =>
    <String, dynamic>{'companies': instance.companies};

_CompaniesUsers _$CompaniesUsersFromJson(Map<String, dynamic> json) =>
    _CompaniesUsers(
      companiesUsers:
          (json['companiesUsers'] as List<dynamic>?)
              ?.map((e) => CompanyUser.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CompaniesUsersToJson(_CompaniesUsers instance) =>
    <String, dynamic>{'companiesUsers': instance.companiesUsers};
