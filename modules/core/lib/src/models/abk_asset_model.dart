import 'package:core/core.dart';
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../json_converters.dart';

part 'abk_asset_model.freezed.dart';
part 'abk_asset_model.g.dart';

@freezed
abstract class Asset with _$Asset {
  factory Asset({
    @Default("") String assetId,
    @Default("") String pseudoId,
    String? assetClassId,
    String? assetName,
    String? statusId,
    Decimal? acquireCost,
    Decimal? quantityOnHand,
    Decimal? availableToPromise,
    String? parentAssetId,
    @DateTimeConverter() DateTime? receivedDate,
    @DateTimeConverter() DateTime? expectedEndOfLifeDate,
    ABKService? service,
    Location? location,
    String? acquireShipmentId,
  }) = _Asset;
  Asset._();

  factory Asset.fromJson(Map<String, dynamic> json) =>
      _$AssetFromJson(json['asset'] ?? json);

  @override
  String toString() => 'Asset name: $assetName[$assetId] '
      'Product: ${service?.serviceName}[${service?.serviceId}] '
      'QOH: $quantityOnHand Status: $statusId';
}

List<String> assetClassIds = [
  'Hotel Room',
  'Restaurant Table',
  'Restaurant Table Area'
];

List<String> assetStatusValues = ['Available', 'Deactivated', 'In Use'];


@freezed
abstract class Assets with _$Assets {
  factory Assets({@Default([]) List<Asset> assets}) = _Assets;
  Assets._();

  factory Assets.fromJson(Map<String, dynamic> json) => _$AssetsFromJson(json);
}


