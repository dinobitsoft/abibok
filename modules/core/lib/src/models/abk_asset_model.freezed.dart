// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abk_asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Asset {

 String get assetId; String get pseudoId; String? get assetClassId; String? get assetName; String? get statusId; Decimal? get acquireCost; Decimal? get quantityOnHand; Decimal? get availableToPromise; String? get parentAssetId;@DateTimeConverter() DateTime? get receivedDate;@DateTimeConverter() DateTime? get expectedEndOfLifeDate; ABKService? get service; Location? get location; String? get acquireShipmentId;
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetCopyWith<Asset> get copyWith => _$AssetCopyWithImpl<Asset>(this as Asset, _$identity);

  /// Serializes this Asset to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Asset&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.assetClassId, assetClassId) || other.assetClassId == assetClassId)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.acquireCost, acquireCost) || other.acquireCost == acquireCost)&&(identical(other.quantityOnHand, quantityOnHand) || other.quantityOnHand == quantityOnHand)&&(identical(other.availableToPromise, availableToPromise) || other.availableToPromise == availableToPromise)&&(identical(other.parentAssetId, parentAssetId) || other.parentAssetId == parentAssetId)&&(identical(other.receivedDate, receivedDate) || other.receivedDate == receivedDate)&&(identical(other.expectedEndOfLifeDate, expectedEndOfLifeDate) || other.expectedEndOfLifeDate == expectedEndOfLifeDate)&&(identical(other.service, service) || other.service == service)&&(identical(other.location, location) || other.location == location)&&(identical(other.acquireShipmentId, acquireShipmentId) || other.acquireShipmentId == acquireShipmentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assetId,pseudoId,assetClassId,assetName,statusId,acquireCost,quantityOnHand,availableToPromise,parentAssetId,receivedDate,expectedEndOfLifeDate,service,location,acquireShipmentId);



}

/// @nodoc
abstract mixin class $AssetCopyWith<$Res>  {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) _then) = _$AssetCopyWithImpl;
@useResult
$Res call({
 String assetId, String pseudoId, String? assetClassId, String? assetName, String? statusId, Decimal? acquireCost, Decimal? quantityOnHand, Decimal? availableToPromise, String? parentAssetId,@DateTimeConverter() DateTime? receivedDate,@DateTimeConverter() DateTime? expectedEndOfLifeDate, ABKService? service, Location? location, String? acquireShipmentId
});


$ABKServiceCopyWith<$Res>? get service;$LocationCopyWith<$Res>? get location;

}
/// @nodoc
class _$AssetCopyWithImpl<$Res>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._self, this._then);

  final Asset _self;
  final $Res Function(Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assetId = null,Object? pseudoId = null,Object? assetClassId = freezed,Object? assetName = freezed,Object? statusId = freezed,Object? acquireCost = freezed,Object? quantityOnHand = freezed,Object? availableToPromise = freezed,Object? parentAssetId = freezed,Object? receivedDate = freezed,Object? expectedEndOfLifeDate = freezed,Object? service = freezed,Object? location = freezed,Object? acquireShipmentId = freezed,}) {
  return _then(_self.copyWith(
assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String,pseudoId: null == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String,assetClassId: freezed == assetClassId ? _self.assetClassId : assetClassId // ignore: cast_nullable_to_non_nullable
as String?,assetName: freezed == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String?,statusId: freezed == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as String?,acquireCost: freezed == acquireCost ? _self.acquireCost : acquireCost // ignore: cast_nullable_to_non_nullable
as Decimal?,quantityOnHand: freezed == quantityOnHand ? _self.quantityOnHand : quantityOnHand // ignore: cast_nullable_to_non_nullable
as Decimal?,availableToPromise: freezed == availableToPromise ? _self.availableToPromise : availableToPromise // ignore: cast_nullable_to_non_nullable
as Decimal?,parentAssetId: freezed == parentAssetId ? _self.parentAssetId : parentAssetId // ignore: cast_nullable_to_non_nullable
as String?,receivedDate: freezed == receivedDate ? _self.receivedDate : receivedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expectedEndOfLifeDate: freezed == expectedEndOfLifeDate ? _self.expectedEndOfLifeDate : expectedEndOfLifeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ABKService?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,acquireShipmentId: freezed == acquireShipmentId ? _self.acquireShipmentId : acquireShipmentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ABKServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ABKServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [Asset].
extension AssetPatterns on Asset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Asset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Asset value)  $default,){
final _that = this;
switch (_that) {
case _Asset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Asset value)?  $default,){
final _that = this;
switch (_that) {
case _Asset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String assetId,  String pseudoId,  String? assetClassId,  String? assetName,  String? statusId,  Decimal? acquireCost,  Decimal? quantityOnHand,  Decimal? availableToPromise,  String? parentAssetId, @DateTimeConverter()  DateTime? receivedDate, @DateTimeConverter()  DateTime? expectedEndOfLifeDate,  ABKService? service,  Location? location,  String? acquireShipmentId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.assetId,_that.pseudoId,_that.assetClassId,_that.assetName,_that.statusId,_that.acquireCost,_that.quantityOnHand,_that.availableToPromise,_that.parentAssetId,_that.receivedDate,_that.expectedEndOfLifeDate,_that.service,_that.location,_that.acquireShipmentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String assetId,  String pseudoId,  String? assetClassId,  String? assetName,  String? statusId,  Decimal? acquireCost,  Decimal? quantityOnHand,  Decimal? availableToPromise,  String? parentAssetId, @DateTimeConverter()  DateTime? receivedDate, @DateTimeConverter()  DateTime? expectedEndOfLifeDate,  ABKService? service,  Location? location,  String? acquireShipmentId)  $default,) {final _that = this;
switch (_that) {
case _Asset():
return $default(_that.assetId,_that.pseudoId,_that.assetClassId,_that.assetName,_that.statusId,_that.acquireCost,_that.quantityOnHand,_that.availableToPromise,_that.parentAssetId,_that.receivedDate,_that.expectedEndOfLifeDate,_that.service,_that.location,_that.acquireShipmentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String assetId,  String pseudoId,  String? assetClassId,  String? assetName,  String? statusId,  Decimal? acquireCost,  Decimal? quantityOnHand,  Decimal? availableToPromise,  String? parentAssetId, @DateTimeConverter()  DateTime? receivedDate, @DateTimeConverter()  DateTime? expectedEndOfLifeDate,  ABKService? service,  Location? location,  String? acquireShipmentId)?  $default,) {final _that = this;
switch (_that) {
case _Asset() when $default != null:
return $default(_that.assetId,_that.pseudoId,_that.assetClassId,_that.assetName,_that.statusId,_that.acquireCost,_that.quantityOnHand,_that.availableToPromise,_that.parentAssetId,_that.receivedDate,_that.expectedEndOfLifeDate,_that.service,_that.location,_that.acquireShipmentId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Asset extends Asset {
   _Asset({this.assetId = "", this.pseudoId = "", this.assetClassId, this.assetName, this.statusId, this.acquireCost, this.quantityOnHand, this.availableToPromise, this.parentAssetId, @DateTimeConverter() this.receivedDate, @DateTimeConverter() this.expectedEndOfLifeDate, this.service, this.location, this.acquireShipmentId}): super._();
  factory _Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);

@override@JsonKey() final  String assetId;
@override@JsonKey() final  String pseudoId;
@override final  String? assetClassId;
@override final  String? assetName;
@override final  String? statusId;
@override final  Decimal? acquireCost;
@override final  Decimal? quantityOnHand;
@override final  Decimal? availableToPromise;
@override final  String? parentAssetId;
@override@DateTimeConverter() final  DateTime? receivedDate;
@override@DateTimeConverter() final  DateTime? expectedEndOfLifeDate;
@override final  ABKService? service;
@override final  Location? location;
@override final  String? acquireShipmentId;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetCopyWith<_Asset> get copyWith => __$AssetCopyWithImpl<_Asset>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Asset&&(identical(other.assetId, assetId) || other.assetId == assetId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.assetClassId, assetClassId) || other.assetClassId == assetClassId)&&(identical(other.assetName, assetName) || other.assetName == assetName)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&(identical(other.acquireCost, acquireCost) || other.acquireCost == acquireCost)&&(identical(other.quantityOnHand, quantityOnHand) || other.quantityOnHand == quantityOnHand)&&(identical(other.availableToPromise, availableToPromise) || other.availableToPromise == availableToPromise)&&(identical(other.parentAssetId, parentAssetId) || other.parentAssetId == parentAssetId)&&(identical(other.receivedDate, receivedDate) || other.receivedDate == receivedDate)&&(identical(other.expectedEndOfLifeDate, expectedEndOfLifeDate) || other.expectedEndOfLifeDate == expectedEndOfLifeDate)&&(identical(other.service, service) || other.service == service)&&(identical(other.location, location) || other.location == location)&&(identical(other.acquireShipmentId, acquireShipmentId) || other.acquireShipmentId == acquireShipmentId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,assetId,pseudoId,assetClassId,assetName,statusId,acquireCost,quantityOnHand,availableToPromise,parentAssetId,receivedDate,expectedEndOfLifeDate,service,location,acquireShipmentId);



}

/// @nodoc
abstract mixin class _$AssetCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) _then) = __$AssetCopyWithImpl;
@override @useResult
$Res call({
 String assetId, String pseudoId, String? assetClassId, String? assetName, String? statusId, Decimal? acquireCost, Decimal? quantityOnHand, Decimal? availableToPromise, String? parentAssetId,@DateTimeConverter() DateTime? receivedDate,@DateTimeConverter() DateTime? expectedEndOfLifeDate, ABKService? service, Location? location, String? acquireShipmentId
});


@override $ABKServiceCopyWith<$Res>? get service;@override $LocationCopyWith<$Res>? get location;

}
/// @nodoc
class __$AssetCopyWithImpl<$Res>
    implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(this._self, this._then);

  final _Asset _self;
  final $Res Function(_Asset) _then;

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assetId = null,Object? pseudoId = null,Object? assetClassId = freezed,Object? assetName = freezed,Object? statusId = freezed,Object? acquireCost = freezed,Object? quantityOnHand = freezed,Object? availableToPromise = freezed,Object? parentAssetId = freezed,Object? receivedDate = freezed,Object? expectedEndOfLifeDate = freezed,Object? service = freezed,Object? location = freezed,Object? acquireShipmentId = freezed,}) {
  return _then(_Asset(
assetId: null == assetId ? _self.assetId : assetId // ignore: cast_nullable_to_non_nullable
as String,pseudoId: null == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String,assetClassId: freezed == assetClassId ? _self.assetClassId : assetClassId // ignore: cast_nullable_to_non_nullable
as String?,assetName: freezed == assetName ? _self.assetName : assetName // ignore: cast_nullable_to_non_nullable
as String?,statusId: freezed == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as String?,acquireCost: freezed == acquireCost ? _self.acquireCost : acquireCost // ignore: cast_nullable_to_non_nullable
as Decimal?,quantityOnHand: freezed == quantityOnHand ? _self.quantityOnHand : quantityOnHand // ignore: cast_nullable_to_non_nullable
as Decimal?,availableToPromise: freezed == availableToPromise ? _self.availableToPromise : availableToPromise // ignore: cast_nullable_to_non_nullable
as Decimal?,parentAssetId: freezed == parentAssetId ? _self.parentAssetId : parentAssetId // ignore: cast_nullable_to_non_nullable
as String?,receivedDate: freezed == receivedDate ? _self.receivedDate : receivedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expectedEndOfLifeDate: freezed == expectedEndOfLifeDate ? _self.expectedEndOfLifeDate : expectedEndOfLifeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as ABKService?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,acquireShipmentId: freezed == acquireShipmentId ? _self.acquireShipmentId : acquireShipmentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ABKServiceCopyWith<$Res>? get service {
    if (_self.service == null) {
    return null;
  }

  return $ABKServiceCopyWith<$Res>(_self.service!, (value) {
    return _then(_self.copyWith(service: value));
  });
}/// Create a copy of Asset
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$Assets {

 List<Asset> get assets;
/// Create a copy of Assets
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssetsCopyWith<Assets> get copyWith => _$AssetsCopyWithImpl<Assets>(this as Assets, _$identity);

  /// Serializes this Assets to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Assets&&const DeepCollectionEquality().equals(other.assets, assets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(assets));

@override
String toString() {
  return 'Assets(assets: $assets)';
}


}

/// @nodoc
abstract mixin class $AssetsCopyWith<$Res>  {
  factory $AssetsCopyWith(Assets value, $Res Function(Assets) _then) = _$AssetsCopyWithImpl;
@useResult
$Res call({
 List<Asset> assets
});




}
/// @nodoc
class _$AssetsCopyWithImpl<$Res>
    implements $AssetsCopyWith<$Res> {
  _$AssetsCopyWithImpl(this._self, this._then);

  final Assets _self;
  final $Res Function(Assets) _then;

/// Create a copy of Assets
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assets = null,}) {
  return _then(_self.copyWith(
assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}

}


/// Adds pattern-matching-related methods to [Assets].
extension AssetsPatterns on Assets {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Assets value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Assets() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Assets value)  $default,){
final _that = this;
switch (_that) {
case _Assets():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Assets value)?  $default,){
final _that = this;
switch (_that) {
case _Assets() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Asset> assets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Assets() when $default != null:
return $default(_that.assets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Asset> assets)  $default,) {final _that = this;
switch (_that) {
case _Assets():
return $default(_that.assets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Asset> assets)?  $default,) {final _that = this;
switch (_that) {
case _Assets() when $default != null:
return $default(_that.assets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Assets extends Assets {
   _Assets({final  List<Asset> assets = const []}): _assets = assets,super._();
  factory _Assets.fromJson(Map<String, dynamic> json) => _$AssetsFromJson(json);

 final  List<Asset> _assets;
@override@JsonKey() List<Asset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


/// Create a copy of Assets
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssetsCopyWith<_Assets> get copyWith => __$AssetsCopyWithImpl<_Assets>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssetsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Assets&&const DeepCollectionEquality().equals(other._assets, _assets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'Assets(assets: $assets)';
}


}

/// @nodoc
abstract mixin class _$AssetsCopyWith<$Res> implements $AssetsCopyWith<$Res> {
  factory _$AssetsCopyWith(_Assets value, $Res Function(_Assets) _then) = __$AssetsCopyWithImpl;
@override @useResult
$Res call({
 List<Asset> assets
});




}
/// @nodoc
class __$AssetsCopyWithImpl<$Res>
    implements _$AssetsCopyWith<$Res> {
  __$AssetsCopyWithImpl(this._self, this._then);

  final _Assets _self;
  final $Res Function(_Assets) _then;

/// Create a copy of Assets
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assets = null,}) {
  return _then(_Assets(
assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<Asset>,
  ));
}


}

// dart format on
