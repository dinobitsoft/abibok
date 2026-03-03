// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abk_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ABKService {

 String get serviceId; String get pseudoId; String? get serviceTypeId;// good, service, rental
 String? get assetClassId;// room, restaurant table
 String? get serviceName; String? get description; Decimal? get listPrice; Decimal? get price; Currency? get currency;// currency, like EUR, USD
 Decimal? get amount;// quantity included like duration, length, weight
 List<Category> get categories; bool get useWarehouse; int? get assetCount;@Uint8ListConverter() Uint8List? get image;
/// Create a copy of ABKService
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABKServiceCopyWith<ABKService> get copyWith => _$ABKServiceCopyWithImpl<ABKService>(this as ABKService, _$identity);

  /// Serializes this ABKService to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABKService&&super == other&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.serviceTypeId, serviceTypeId) || other.serviceTypeId == serviceTypeId)&&(identical(other.assetClassId, assetClassId) || other.assetClassId == assetClassId)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.description, description) || other.description == description)&&(identical(other.listPrice, listPrice) || other.listPrice == listPrice)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.useWarehouse, useWarehouse) || other.useWarehouse == useWarehouse)&&(identical(other.assetCount, assetCount) || other.assetCount == assetCount)&&const DeepCollectionEquality().equals(other.image, image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,serviceId,pseudoId,serviceTypeId,assetClassId,serviceName,description,listPrice,price,currency,amount,const DeepCollectionEquality().hash(categories),useWarehouse,assetCount,const DeepCollectionEquality().hash(image));



}

/// @nodoc
abstract mixin class $ABKServiceCopyWith<$Res>  {
  factory $ABKServiceCopyWith(ABKService value, $Res Function(ABKService) _then) = _$ABKServiceCopyWithImpl;
@useResult
$Res call({
 String serviceId, String pseudoId, String? serviceTypeId, String? assetClassId, String? serviceName, String? description, Decimal? listPrice, Decimal? price, Currency? currency, Decimal? amount, List<Category> categories, bool useWarehouse, int? assetCount,@Uint8ListConverter() Uint8List? image
});


$CurrencyCopyWith<$Res>? get currency;

}
/// @nodoc
class _$ABKServiceCopyWithImpl<$Res>
    implements $ABKServiceCopyWith<$Res> {
  _$ABKServiceCopyWithImpl(this._self, this._then);

  final ABKService _self;
  final $Res Function(ABKService) _then;

/// Create a copy of ABKService
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceId = null,Object? pseudoId = null,Object? serviceTypeId = freezed,Object? assetClassId = freezed,Object? serviceName = freezed,Object? description = freezed,Object? listPrice = freezed,Object? price = freezed,Object? currency = freezed,Object? amount = freezed,Object? categories = null,Object? useWarehouse = null,Object? assetCount = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,pseudoId: null == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String,serviceTypeId: freezed == serviceTypeId ? _self.serviceTypeId : serviceTypeId // ignore: cast_nullable_to_non_nullable
as String?,assetClassId: freezed == assetClassId ? _self.assetClassId : assetClassId // ignore: cast_nullable_to_non_nullable
as String?,serviceName: freezed == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,listPrice: freezed == listPrice ? _self.listPrice : listPrice // ignore: cast_nullable_to_non_nullable
as Decimal?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Decimal?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,useWarehouse: null == useWarehouse ? _self.useWarehouse : useWarehouse // ignore: cast_nullable_to_non_nullable
as bool,assetCount: freezed == assetCount ? _self.assetCount : assetCount // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}
/// Create a copy of ABKService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}
}


/// Adds pattern-matching-related methods to [ABKService].
extension ABKServicePatterns on ABKService {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABKService value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABKService() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABKService value)  $default,){
final _that = this;
switch (_that) {
case _ABKService():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABKService value)?  $default,){
final _that = this;
switch (_that) {
case _ABKService() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serviceId,  String pseudoId,  String? serviceTypeId,  String? assetClassId,  String? serviceName,  String? description,  Decimal? listPrice,  Decimal? price,  Currency? currency,  Decimal? amount,  List<Category> categories,  bool useWarehouse,  int? assetCount, @Uint8ListConverter()  Uint8List? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABKService() when $default != null:
return $default(_that.serviceId,_that.pseudoId,_that.serviceTypeId,_that.assetClassId,_that.serviceName,_that.description,_that.listPrice,_that.price,_that.currency,_that.amount,_that.categories,_that.useWarehouse,_that.assetCount,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serviceId,  String pseudoId,  String? serviceTypeId,  String? assetClassId,  String? serviceName,  String? description,  Decimal? listPrice,  Decimal? price,  Currency? currency,  Decimal? amount,  List<Category> categories,  bool useWarehouse,  int? assetCount, @Uint8ListConverter()  Uint8List? image)  $default,) {final _that = this;
switch (_that) {
case _ABKService():
return $default(_that.serviceId,_that.pseudoId,_that.serviceTypeId,_that.assetClassId,_that.serviceName,_that.description,_that.listPrice,_that.price,_that.currency,_that.amount,_that.categories,_that.useWarehouse,_that.assetCount,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serviceId,  String pseudoId,  String? serviceTypeId,  String? assetClassId,  String? serviceName,  String? description,  Decimal? listPrice,  Decimal? price,  Currency? currency,  Decimal? amount,  List<Category> categories,  bool useWarehouse,  int? assetCount, @Uint8ListConverter()  Uint8List? image)?  $default,) {final _that = this;
switch (_that) {
case _ABKService() when $default != null:
return $default(_that.serviceId,_that.pseudoId,_that.serviceTypeId,_that.assetClassId,_that.serviceName,_that.description,_that.listPrice,_that.price,_that.currency,_that.amount,_that.categories,_that.useWarehouse,_that.assetCount,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ABKService extends ABKService {
  const _ABKService({this.serviceId = "", this.pseudoId = "", this.serviceTypeId, this.assetClassId, this.serviceName, this.description, this.listPrice, this.price, this.currency, this.amount, final  List<Category> categories = const [], this.useWarehouse = false, this.assetCount, @Uint8ListConverter() this.image}): _categories = categories,super._();
  factory _ABKService.fromJson(Map<String, dynamic> json) => _$ABKServiceFromJson(json);

@override@JsonKey() final  String serviceId;
@override@JsonKey() final  String pseudoId;
@override final  String? serviceTypeId;
// good, service, rental
@override final  String? assetClassId;
// room, restaurant table
@override final  String? serviceName;
@override final  String? description;
@override final  Decimal? listPrice;
@override final  Decimal? price;
@override final  Currency? currency;
// currency, like EUR, USD
@override final  Decimal? amount;
// quantity included like duration, length, weight
 final  List<Category> _categories;
// quantity included like duration, length, weight
@override@JsonKey() List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  bool useWarehouse;
@override final  int? assetCount;
@override@Uint8ListConverter() final  Uint8List? image;

/// Create a copy of ABKService
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABKServiceCopyWith<_ABKService> get copyWith => __$ABKServiceCopyWithImpl<_ABKService>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ABKServiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABKService&&super == other&&(identical(other.serviceId, serviceId) || other.serviceId == serviceId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.serviceTypeId, serviceTypeId) || other.serviceTypeId == serviceTypeId)&&(identical(other.assetClassId, assetClassId) || other.assetClassId == assetClassId)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.description, description) || other.description == description)&&(identical(other.listPrice, listPrice) || other.listPrice == listPrice)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.useWarehouse, useWarehouse) || other.useWarehouse == useWarehouse)&&(identical(other.assetCount, assetCount) || other.assetCount == assetCount)&&const DeepCollectionEquality().equals(other.image, image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,serviceId,pseudoId,serviceTypeId,assetClassId,serviceName,description,listPrice,price,currency,amount,const DeepCollectionEquality().hash(_categories),useWarehouse,assetCount,const DeepCollectionEquality().hash(image));



}

/// @nodoc
abstract mixin class _$ABKServiceCopyWith<$Res> implements $ABKServiceCopyWith<$Res> {
  factory _$ABKServiceCopyWith(_ABKService value, $Res Function(_ABKService) _then) = __$ABKServiceCopyWithImpl;
@override @useResult
$Res call({
 String serviceId, String pseudoId, String? serviceTypeId, String? assetClassId, String? serviceName, String? description, Decimal? listPrice, Decimal? price, Currency? currency, Decimal? amount, List<Category> categories, bool useWarehouse, int? assetCount,@Uint8ListConverter() Uint8List? image
});


@override $CurrencyCopyWith<$Res>? get currency;

}
/// @nodoc
class __$ABKServiceCopyWithImpl<$Res>
    implements _$ABKServiceCopyWith<$Res> {
  __$ABKServiceCopyWithImpl(this._self, this._then);

  final _ABKService _self;
  final $Res Function(_ABKService) _then;

/// Create a copy of ABKService
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceId = null,Object? pseudoId = null,Object? serviceTypeId = freezed,Object? assetClassId = freezed,Object? serviceName = freezed,Object? description = freezed,Object? listPrice = freezed,Object? price = freezed,Object? currency = freezed,Object? amount = freezed,Object? categories = null,Object? useWarehouse = null,Object? assetCount = freezed,Object? image = freezed,}) {
  return _then(_ABKService(
serviceId: null == serviceId ? _self.serviceId : serviceId // ignore: cast_nullable_to_non_nullable
as String,pseudoId: null == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String,serviceTypeId: freezed == serviceTypeId ? _self.serviceTypeId : serviceTypeId // ignore: cast_nullable_to_non_nullable
as String?,assetClassId: freezed == assetClassId ? _self.assetClassId : assetClassId // ignore: cast_nullable_to_non_nullable
as String?,serviceName: freezed == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,listPrice: freezed == listPrice ? _self.listPrice : listPrice // ignore: cast_nullable_to_non_nullable
as Decimal?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Decimal?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as Decimal?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,useWarehouse: null == useWarehouse ? _self.useWarehouse : useWarehouse // ignore: cast_nullable_to_non_nullable
as bool,assetCount: freezed == assetCount ? _self.assetCount : assetCount // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,
  ));
}

/// Create a copy of ABKService
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}
}


/// @nodoc
mixin _$ABKServices {

 List<ABKService> get products;
/// Create a copy of ABKServices
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ABKServicesCopyWith<ABKServices> get copyWith => _$ABKServicesCopyWithImpl<ABKServices>(this as ABKServices, _$identity);

  /// Serializes this ABKServices to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ABKServices&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ABKServices(products: $products)';
}


}

/// @nodoc
abstract mixin class $ABKServicesCopyWith<$Res>  {
  factory $ABKServicesCopyWith(ABKServices value, $Res Function(ABKServices) _then) = _$ABKServicesCopyWithImpl;
@useResult
$Res call({
 List<ABKService> products
});




}
/// @nodoc
class _$ABKServicesCopyWithImpl<$Res>
    implements $ABKServicesCopyWith<$Res> {
  _$ABKServicesCopyWithImpl(this._self, this._then);

  final ABKServices _self;
  final $Res Function(ABKServices) _then;

/// Create a copy of ABKServices
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ABKService>,
  ));
}

}


/// Adds pattern-matching-related methods to [ABKServices].
extension ABKServicesPatterns on ABKServices {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ABKServices value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ABKServices() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ABKServices value)  $default,){
final _that = this;
switch (_that) {
case _ABKServices():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ABKServices value)?  $default,){
final _that = this;
switch (_that) {
case _ABKServices() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ABKService> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ABKServices() when $default != null:
return $default(_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ABKService> products)  $default,) {final _that = this;
switch (_that) {
case _ABKServices():
return $default(_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ABKService> products)?  $default,) {final _that = this;
switch (_that) {
case _ABKServices() when $default != null:
return $default(_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ABKServices extends ABKServices {
   _ABKServices({final  List<ABKService> products = const []}): _products = products,super._();
  factory _ABKServices.fromJson(Map<String, dynamic> json) => _$ABKServicesFromJson(json);

 final  List<ABKService> _products;
@override@JsonKey() List<ABKService> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ABKServices
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ABKServicesCopyWith<_ABKServices> get copyWith => __$ABKServicesCopyWithImpl<_ABKServices>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ABKServicesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ABKServices&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ABKServices(products: $products)';
}


}

/// @nodoc
abstract mixin class _$ABKServicesCopyWith<$Res> implements $ABKServicesCopyWith<$Res> {
  factory _$ABKServicesCopyWith(_ABKServices value, $Res Function(_ABKServices) _then) = __$ABKServicesCopyWithImpl;
@override @useResult
$Res call({
 List<ABKService> products
});




}
/// @nodoc
class __$ABKServicesCopyWithImpl<$Res>
    implements _$ABKServicesCopyWith<$Res> {
  __$ABKServicesCopyWithImpl(this._self, this._then);

  final _ABKServices _self;
  final $Res Function(_ABKServices) _then;

/// Create a copy of ABKServices
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(_ABKServices(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ABKService>,
  ));
}


}

// dart format on
