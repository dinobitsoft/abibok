// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abk_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Location {

 String? get locationId; String? get pseudoId; String? get locationName; List<Asset> get assets;
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Location&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other.assets, assets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationId,pseudoId,locationName,const DeepCollectionEquality().hash(assets));

@override
String toString() {
  return 'Location(locationId: $locationId, pseudoId: $pseudoId, locationName: $locationName, assets: $assets)';
}


}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res>  {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) = _$LocationCopyWithImpl;
@useResult
$Res call({
 String? locationId, String? pseudoId, String? locationName, List<Asset> assets
});




}
/// @nodoc
class _$LocationCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locationId = freezed,Object? pseudoId = freezed,Object? locationName = freezed,Object? assets = null,}) {
  return _then(_self.copyWith(
locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,pseudoId: freezed == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}

}


/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Location value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Location value)  $default,){
final _that = this;
switch (_that) {
case _Location():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Location value)?  $default,){
final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? locationId,  String? pseudoId,  String? locationName,  List<Asset> assets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that.locationId,_that.pseudoId,_that.locationName,_that.assets);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? locationId,  String? pseudoId,  String? locationName,  List<Asset> assets)  $default,) {final _that = this;
switch (_that) {
case _Location():
return $default(_that.locationId,_that.pseudoId,_that.locationName,_that.assets);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? locationId,  String? pseudoId,  String? locationName,  List<Asset> assets)?  $default,) {final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that.locationId,_that.pseudoId,_that.locationName,_that.assets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Location extends Location {
   _Location({this.locationId, this.pseudoId, this.locationName, final  List<Asset> assets = const []}): _assets = assets,super._();
  factory _Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

@override final  String? locationId;
@override final  String? pseudoId;
@override final  String? locationName;
 final  List<Asset> _assets;
@override@JsonKey() List<Asset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other._assets, _assets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,locationId,pseudoId,locationName,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'Location(locationId: $locationId, pseudoId: $pseudoId, locationName: $locationName, assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@override @useResult
$Res call({
 String? locationId, String? pseudoId, String? locationName, List<Asset> assets
});




}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locationId = freezed,Object? pseudoId = freezed,Object? locationName = freezed,Object? assets = null,}) {
  return _then(_Location(
locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,pseudoId: freezed == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}


}


/// @nodoc
mixin _$Locations {

 List<Location> get locations;
/// Create a copy of Locations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationsCopyWith<Locations> get copyWith => _$LocationsCopyWithImpl<Locations>(this as Locations, _$identity);

  /// Serializes this Locations to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Locations&&const DeepCollectionEquality().equals(other.locations, locations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(locations));

@override
String toString() {
  return 'Locations(locations: $locations)';
}


}

/// @nodoc
abstract mixin class $LocationsCopyWith<$Res>  {
  factory $LocationsCopyWith(Locations value, $Res Function(Locations) _then) = _$LocationsCopyWithImpl;
@useResult
$Res call({
 List<Location> locations
});




}
/// @nodoc
class _$LocationsCopyWithImpl<$Res>
    implements $LocationsCopyWith<$Res> {
  _$LocationsCopyWithImpl(this._self, this._then);

  final Locations _self;
  final $Res Function(Locations) _then;

/// Create a copy of Locations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locations = null,}) {
  return _then(_self.copyWith(
locations: null == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,
  ));
}

}


/// Adds pattern-matching-related methods to [Locations].
extension LocationsPatterns on Locations {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Locations value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Locations() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Locations value)  $default,){
final _that = this;
switch (_that) {
case _Locations():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Locations value)?  $default,){
final _that = this;
switch (_that) {
case _Locations() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Location> locations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Locations() when $default != null:
return $default(_that.locations);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Location> locations)  $default,) {final _that = this;
switch (_that) {
case _Locations():
return $default(_that.locations);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Location> locations)?  $default,) {final _that = this;
switch (_that) {
case _Locations() when $default != null:
return $default(_that.locations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Locations extends Locations {
   _Locations({final  List<Location> locations = const []}): _locations = locations,super._();
  factory _Locations.fromJson(Map<String, dynamic> json) => _$LocationsFromJson(json);

 final  List<Location> _locations;
@override@JsonKey() List<Location> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}


/// Create a copy of Locations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationsCopyWith<_Locations> get copyWith => __$LocationsCopyWithImpl<_Locations>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Locations&&const DeepCollectionEquality().equals(other._locations, _locations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_locations));

@override
String toString() {
  return 'Locations(locations: $locations)';
}


}

/// @nodoc
abstract mixin class _$LocationsCopyWith<$Res> implements $LocationsCopyWith<$Res> {
  factory _$LocationsCopyWith(_Locations value, $Res Function(_Locations) _then) = __$LocationsCopyWithImpl;
@override @useResult
$Res call({
 List<Location> locations
});




}
/// @nodoc
class __$LocationsCopyWithImpl<$Res>
    implements _$LocationsCopyWith<$Res> {
  __$LocationsCopyWithImpl(this._self, this._then);

  final _Locations _self;
  final $Res Function(_Locations) _then;

/// Create a copy of Locations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locations = null,}) {
  return _then(_Locations(
locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,
  ));
}


}

// dart format on
