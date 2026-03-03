// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abk_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

 String get categoryId; String get pseudoId; String get categoryName; String get description;@Uint8ListConverter() Uint8List? get image; int get seqId; int get nbrOfProducts; List<ABKService> get services;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&super == other&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.seqId, seqId) || other.seqId == seqId)&&(identical(other.nbrOfProducts, nbrOfProducts) || other.nbrOfProducts == nbrOfProducts)&&const DeepCollectionEquality().equals(other.services, services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,categoryId,pseudoId,categoryName,description,const DeepCollectionEquality().hash(image),seqId,nbrOfProducts,const DeepCollectionEquality().hash(services));



}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String categoryId, String pseudoId, String categoryName, String description,@Uint8ListConverter() Uint8List? image, int seqId, int nbrOfProducts, List<ABKService> services
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? pseudoId = null,Object? categoryName = null,Object? description = null,Object? image = freezed,Object? seqId = null,Object? nbrOfProducts = null,Object? services = null,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,pseudoId: null == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,seqId: null == seqId ? _self.seqId : seqId // ignore: cast_nullable_to_non_nullable
as int,nbrOfProducts: null == nbrOfProducts ? _self.nbrOfProducts : nbrOfProducts // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<ABKService>,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String categoryId,  String pseudoId,  String categoryName,  String description, @Uint8ListConverter()  Uint8List? image,  int seqId,  int nbrOfProducts,  List<ABKService> services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.categoryId,_that.pseudoId,_that.categoryName,_that.description,_that.image,_that.seqId,_that.nbrOfProducts,_that.services);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String categoryId,  String pseudoId,  String categoryName,  String description, @Uint8ListConverter()  Uint8List? image,  int seqId,  int nbrOfProducts,  List<ABKService> services)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.categoryId,_that.pseudoId,_that.categoryName,_that.description,_that.image,_that.seqId,_that.nbrOfProducts,_that.services);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String categoryId,  String pseudoId,  String categoryName,  String description, @Uint8ListConverter()  Uint8List? image,  int seqId,  int nbrOfProducts,  List<ABKService> services)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.categoryId,_that.pseudoId,_that.categoryName,_that.description,_that.image,_that.seqId,_that.nbrOfProducts,_that.services);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category extends Category {
   _Category({this.categoryId = "", this.pseudoId = "", this.categoryName = "", this.description = "", @Uint8ListConverter() this.image, this.seqId = 0, this.nbrOfProducts = 0, final  List<ABKService> services = const []}): _services = services,super._();
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override@JsonKey() final  String categoryId;
@override@JsonKey() final  String pseudoId;
@override@JsonKey() final  String categoryName;
@override@JsonKey() final  String description;
@override@Uint8ListConverter() final  Uint8List? image;
@override@JsonKey() final  int seqId;
@override@JsonKey() final  int nbrOfProducts;
 final  List<ABKService> _services;
@override@JsonKey() List<ABKService> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&super == other&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.seqId, seqId) || other.seqId == seqId)&&(identical(other.nbrOfProducts, nbrOfProducts) || other.nbrOfProducts == nbrOfProducts)&&const DeepCollectionEquality().equals(other._services, _services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,categoryId,pseudoId,categoryName,description,const DeepCollectionEquality().hash(image),seqId,nbrOfProducts,const DeepCollectionEquality().hash(_services));



}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String categoryId, String pseudoId, String categoryName, String description,@Uint8ListConverter() Uint8List? image, int seqId, int nbrOfProducts, List<ABKService> services
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? pseudoId = null,Object? categoryName = null,Object? description = null,Object? image = freezed,Object? seqId = null,Object? nbrOfProducts = null,Object? services = null,}) {
  return _then(_Category(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,pseudoId: null == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,seqId: null == seqId ? _self.seqId : seqId // ignore: cast_nullable_to_non_nullable
as int,nbrOfProducts: null == nbrOfProducts ? _self.nbrOfProducts : nbrOfProducts // ignore: cast_nullable_to_non_nullable
as int,services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<ABKService>,
  ));
}


}


/// @nodoc
mixin _$Categories {

 List<Category> get categories;
/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesCopyWith<Categories> get copyWith => _$CategoriesCopyWithImpl<Categories>(this as Categories, _$identity);

  /// Serializes this Categories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Categories&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'Categories(categories: $categories)';
}


}

/// @nodoc
abstract mixin class $CategoriesCopyWith<$Res>  {
  factory $CategoriesCopyWith(Categories value, $Res Function(Categories) _then) = _$CategoriesCopyWithImpl;
@useResult
$Res call({
 List<Category> categories
});




}
/// @nodoc
class _$CategoriesCopyWithImpl<$Res>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._self, this._then);

  final Categories _self;
  final $Res Function(Categories) _then;

/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}

}


/// Adds pattern-matching-related methods to [Categories].
extension CategoriesPatterns on Categories {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Categories value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Categories() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Categories value)  $default,){
final _that = this;
switch (_that) {
case _Categories():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Categories value)?  $default,){
final _that = this;
switch (_that) {
case _Categories() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Category> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Categories() when $default != null:
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Category> categories)  $default,) {final _that = this;
switch (_that) {
case _Categories():
return $default(_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Category> categories)?  $default,) {final _that = this;
switch (_that) {
case _Categories() when $default != null:
return $default(_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Categories extends Categories {
   _Categories({final  List<Category> categories = const []}): _categories = categories,super._();
  factory _Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);

 final  List<Category> _categories;
@override@JsonKey() List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoriesCopyWith<_Categories> get copyWith => __$CategoriesCopyWithImpl<_Categories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Categories&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'Categories(categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$CategoriesCopyWith<$Res> implements $CategoriesCopyWith<$Res> {
  factory _$CategoriesCopyWith(_Categories value, $Res Function(_Categories) _then) = __$CategoriesCopyWithImpl;
@override @useResult
$Res call({
 List<Category> categories
});




}
/// @nodoc
class __$CategoriesCopyWithImpl<$Res>
    implements _$CategoriesCopyWith<$Res> {
  __$CategoriesCopyWithImpl(this._self, this._then);

  final _Categories _self;
  final $Res Function(_Categories) _then;

/// Create a copy of Categories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,}) {
  return _then(_Categories(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

// dart format on
