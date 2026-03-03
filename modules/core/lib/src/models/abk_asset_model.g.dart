// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abk_asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Asset _$AssetFromJson(Map<String, dynamic> json) => _Asset(
  assetId: json['assetId'] as String? ?? "",
  pseudoId: json['pseudoId'] as String? ?? "",
  assetClassId: json['assetClassId'] as String?,
  assetName: json['assetName'] as String?,
  statusId: json['statusId'] as String?,
  acquireCost: json['acquireCost'] == null
      ? null
      : Decimal.fromJson(json['acquireCost'] as String),
  quantityOnHand: json['quantityOnHand'] == null
      ? null
      : Decimal.fromJson(json['quantityOnHand'] as String),
  availableToPromise: json['availableToPromise'] == null
      ? null
      : Decimal.fromJson(json['availableToPromise'] as String),
  parentAssetId: json['parentAssetId'] as String?,
  receivedDate: const DateTimeConverter().fromJson(
    json['receivedDate'] as String?,
  ),
  expectedEndOfLifeDate: const DateTimeConverter().fromJson(
    json['expectedEndOfLifeDate'] as String?,
  ),
  service: json['service'] == null
      ? null
      : ABKService.fromJson(json['service'] as Map<String, dynamic>),
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  acquireShipmentId: json['acquireShipmentId'] as String?,
);

Map<String, dynamic> _$AssetToJson(_Asset instance) => <String, dynamic>{
  'assetId': instance.assetId,
  'pseudoId': instance.pseudoId,
  'assetClassId': instance.assetClassId,
  'assetName': instance.assetName,
  'statusId': instance.statusId,
  'acquireCost': instance.acquireCost,
  'quantityOnHand': instance.quantityOnHand,
  'availableToPromise': instance.availableToPromise,
  'parentAssetId': instance.parentAssetId,
  'receivedDate': const DateTimeConverter().toJson(instance.receivedDate),
  'expectedEndOfLifeDate': const DateTimeConverter().toJson(
    instance.expectedEndOfLifeDate,
  ),
  'service': instance.service,
  'location': instance.location,
  'acquireShipmentId': instance.acquireShipmentId,
};

_Assets _$AssetsFromJson(Map<String, dynamic> json) => _Assets(
  assets:
      (json['assets'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AssetsToJson(_Assets instance) => <String, dynamic>{
  'assets': instance.assets,
};
