import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_type_model.freezed.dart';
part 'payment_type_model.g.dart';

/// Payment type used for payments
/// key is type/isPayable/isApplied
@freezed
abstract class PaymentType with _$PaymentType {
  PaymentType._();
  factory PaymentType({
    @Default('') String paymentTypeId,
    @Default(false) bool isPayable,
    @Default(false) bool isApplied,
    @Default('') String paymentTypeName,
    @Default('') String accountCode,
    @Default('') String accountName,
  }) = _PaymentType;

  factory PaymentType.fromJson(Map<String, dynamic> json) =>
      _$PaymentTypeFromJson(json['paymentType'] ?? json);
}
