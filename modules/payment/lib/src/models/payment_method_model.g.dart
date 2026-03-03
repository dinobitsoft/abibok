// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    _PaymentMethod(
      ccPaymentMethodId: json['ccPaymentMethodId'] as String?,
      ccDescription: json['ccDescription'] as String?,
      ccNameOnCard: json['ccNameOnCard'] as String?,
      creditCardNumber: json['creditCardNumber'] as String?,
      checkNumber: json['checkNumber'] as String?,
      creditCardType: const CreditCardTypeConverter().fromJson(
        json['creditCardType'] as String?,
      ),
      expireMonth: json['expireMonth'] as String?,
      expireYear: json['expireYear'] as String?,
      cVC: json['cVC'] as String?,
    );

Map<String, dynamic> _$PaymentMethodToJson(_PaymentMethod instance) =>
    <String, dynamic>{
      'ccPaymentMethodId': instance.ccPaymentMethodId,
      'ccDescription': instance.ccDescription,
      'ccNameOnCard': instance.ccNameOnCard,
      'creditCardNumber': instance.creditCardNumber,
      'checkNumber': instance.checkNumber,
      'creditCardType': const CreditCardTypeConverter().toJson(
        instance.creditCardType,
      ),
      'expireMonth': instance.expireMonth,
      'expireYear': instance.expireYear,
      'cVC': instance.cVC,
    };
