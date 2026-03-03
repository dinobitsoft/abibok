import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'abk_location_model.freezed.dart';
part 'abk_location_model.g.dart';

@freezed
abstract class Location with _$Location {
  Location._();
  factory Location({
    final String? locationId,
    final String? pseudoId,
    final String? locationName,
    @Default([]) final List<Asset> assets,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json['location'] ?? json);
}

@freezed
abstract class Locations with _$Locations {
  factory Locations({@Default([]) List<Location> locations}) = _Locations;
  Locations._();

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
}
