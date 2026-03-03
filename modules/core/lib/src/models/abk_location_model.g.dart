// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abk_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  locationId: json['locationId'] as String?,
  pseudoId: json['pseudoId'] as String?,
  locationName: json['locationName'] as String?,
  assets:
      (json['assets'] as List<dynamic>?)
          ?.map((e) => Asset.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'locationId': instance.locationId,
  'pseudoId': instance.pseudoId,
  'locationName': instance.locationName,
  'assets': instance.assets,
};

_Locations _$LocationsFromJson(Map<String, dynamic> json) => _Locations(
  locations:
      (json['locations'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$LocationsToJson(_Locations instance) =>
    <String, dynamic>{'locations': instance.locations};
