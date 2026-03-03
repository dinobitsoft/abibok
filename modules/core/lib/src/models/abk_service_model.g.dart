// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abk_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ABKService _$ABKServiceFromJson(Map<String, dynamic> json) => _ABKService(
  serviceId: json['serviceId'] as String? ?? "",
  pseudoId: json['pseudoId'] as String? ?? "",
  serviceTypeId: json['serviceTypeId'] as String?,
  assetClassId: json['assetClassId'] as String?,
  serviceName: json['serviceName'] as String?,
  description: json['description'] as String?,
  listPrice: json['listPrice'] == null
      ? null
      : Decimal.fromJson(json['listPrice'] as String),
  price: json['price'] == null
      ? null
      : Decimal.fromJson(json['price'] as String),
  currency: json['currency'] == null
      ? null
      : Currency.fromJson(json['currency'] as Map<String, dynamic>),
  amount: json['amount'] == null
      ? null
      : Decimal.fromJson(json['amount'] as String),
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  useWarehouse: json['useWarehouse'] as bool? ?? false,
  assetCount: (json['assetCount'] as num?)?.toInt(),
  image: const Uint8ListConverter().fromJson(json['image'] as String?),
);

Map<String, dynamic> _$ABKServiceToJson(_ABKService instance) =>
    <String, dynamic>{
      'serviceId': instance.serviceId,
      'pseudoId': instance.pseudoId,
      'serviceTypeId': instance.serviceTypeId,
      'assetClassId': instance.assetClassId,
      'serviceName': instance.serviceName,
      'description': instance.description,
      'listPrice': instance.listPrice,
      'price': instance.price,
      'currency': instance.currency,
      'amount': instance.amount,
      'categories': instance.categories,
      'useWarehouse': instance.useWarehouse,
      'assetCount': instance.assetCount,
      'image': const Uint8ListConverter().toJson(instance.image),
    };

_ABKServices _$ABKServicesFromJson(Map<String, dynamic> json) => _ABKServices(
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ABKService.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ABKServicesToJson(_ABKServices instance) =>
    <String, dynamic>{'products': instance.products};
