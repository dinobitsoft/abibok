// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authenticate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Authenticate _$AuthenticateFromJson(Map<String, dynamic> json) =>
    _Authenticate(
      apiKey: json['apiKey'] as String?,
      classificationId: json['classificationId'] as String?,
      moquiSessionToken: json['moquiSessionToken'] as String?,
      ownerPartyId: json['ownerPartyId'] as String?,
      companyUser: json['companyUser'] == null
          ? null
          : CompanyUser.fromJson(json['companyUser'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthenticateToJson(_Authenticate instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'classificationId': instance.classificationId,
      'moquiSessionToken': instance.moquiSessionToken,
      'ownerPartyId': instance.ownerPartyId,
      'companyUser': instance.companyUser,
      'company': instance.company,
      'user': instance.user,
      'stats': instance.stats,
    };
