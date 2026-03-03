import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payment/payment.dart';

import 'abk_category_model.dart';
import 'uint8list_converter.dart';

part 'abk_service_model.freezed.dart';
part 'abk_service_model.g.dart';

@freezed
abstract class ABKService extends Equatable with _$ABKService {
  const ABKService._();
  const factory ABKService({
    @Default("") String serviceId,
    @Default("") String pseudoId,
    String? serviceTypeId, // good, service, rental
    String? assetClassId, // room, restaurant table
    String? serviceName,
    String? description,
    Decimal? listPrice,
    Decimal? price,
    Currency? currency, // currency, like EUR, USD
    Decimal? amount, // quantity included like duration, length, weight
    @Default([]) List<Category> categories,
    @Default(false) bool useWarehouse,
    int? assetCount,
    @Uint8ListConverter() Uint8List? image,
  }) = _ABKService;

  factory ABKService.fromJson(Map<String, dynamic> json) =>
      _$ABKServiceFromJson(json['product'] ?? json);

  @override
  List<Object?> get props => [serviceId];

  @override
  String toString() => '$serviceName[$serviceId]';
}

List<String> productTypes = ['Physical Good', 'Service', 'Rental'];

String productCsvFormat =
    'product Id, Type*, Name*, Description*, List Price*, Sales price*, '
    'Purchase price, Use Warehouse, Category 1, Category 2, Category 3, Image\r\n';
List<String> productCsvTitles = productCsvFormat.split(',');
int productCsvLength = productCsvTitles.length;


@freezed
abstract class ABKServices with _$ABKServices {
  factory ABKServices({@Default([]) List<ABKService> products}) = _ABKServices;
  ABKServices._();

  factory ABKServices.fromJson(Map<String, dynamic> json) =>
      _$ABKServicesFromJson(json);
}

