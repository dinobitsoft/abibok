import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
abstract class Currency with _$Currency {
  Currency._();
  factory Currency({
    String? currencyId,
    String? description,
  }) = _Currency;
  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json['currency'] ?? json);
}

List<Currency> currencies = [
  Currency(currencyId: '', description: ''),
  Currency(currencyId: 'USD', description: 'United States Dollar'),
  Currency(currencyId: 'EUR', description: 'European Euro'),
  Currency(currencyId: 'AUD', description: 'Australian Dollar'),
  Currency(currencyId: 'THB', description: 'Thailand Baht')
];
