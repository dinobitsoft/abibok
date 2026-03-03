import 'package:json_annotation/json_annotation.dart' show JsonConverter;

import 'models.dart';

class PaymentInstrumentConverter
    implements JsonConverter<PaymentInstrument?, String?> {
  const PaymentInstrumentConverter();

  @override
  PaymentInstrument? fromJson(String? json) {
    if (json == null) return null;
    return PaymentInstrument.tryParse(json);
  }

  @override
  String? toJson(PaymentInstrument? object) {
    if (object == null) return null;
    return object.toString();
  }
}
