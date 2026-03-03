import 'package:json_annotation/json_annotation.dart' show JsonConverter;

import 'models.dart';

class CreditCardTypeConverter
    implements JsonConverter<CreditCardType?, String?> {
  const CreditCardTypeConverter();

  @override
  CreditCardType? fromJson(String? json) {
    if (json == null) return null;
    return CreditCardType.getByValue(json);
  }

  @override
  String? toJson(CreditCardType? object) {
    if (object == null) return null;
    return object.toString();
  }
}
