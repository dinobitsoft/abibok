// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentType _$PaymentTypeFromJson(Map<String, dynamic> json) => _PaymentType(
  paymentTypeId: json['paymentTypeId'] as String? ?? '',
  isPayable: json['isPayable'] as bool? ?? false,
  isApplied: json['isApplied'] as bool? ?? false,
  paymentTypeName: json['paymentTypeName'] as String? ?? '',
  accountCode: json['accountCode'] as String? ?? '',
  accountName: json['accountName'] as String? ?? '',
);

Map<String, dynamic> _$PaymentTypeToJson(_PaymentType instance) =>
    <String, dynamic>{
      'paymentTypeId': instance.paymentTypeId,
      'isPayable': instance.isPayable,
      'isApplied': instance.isApplied,
      'paymentTypeName': instance.paymentTypeName,
      'accountCode': instance.accountCode,
      'accountName': instance.accountName,
    };
