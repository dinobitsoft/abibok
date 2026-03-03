import 'package:freezed_annotation/freezed_annotation.dart';

import 'credit_card_type_converter.dart' show CreditCardTypeConverter;
import 'models.dart';

part 'payment_method_model.freezed.dart';
part 'payment_method_model.g.dart';

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  PaymentMethod._();
  factory PaymentMethod({
    String? ccPaymentMethodId,
    String? ccDescription,
    String? ccNameOnCard,
    String? creditCardNumber,
    String? checkNumber,
    @CreditCardTypeConverter() CreditCardType? creditCardType,
    String? expireMonth,
    String? expireYear,
    String? cVC,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json['paymentMethod'] ?? json);
}
