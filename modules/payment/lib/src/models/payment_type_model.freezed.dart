// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentType {

 String get paymentTypeId; bool get isPayable; bool get isApplied; String get paymentTypeName; String get accountCode; String get accountName;
/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentTypeCopyWith<PaymentType> get copyWith => _$PaymentTypeCopyWithImpl<PaymentType>(this as PaymentType, _$identity);

  /// Serializes this PaymentType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentType&&(identical(other.paymentTypeId, paymentTypeId) || other.paymentTypeId == paymentTypeId)&&(identical(other.isPayable, isPayable) || other.isPayable == isPayable)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.paymentTypeName, paymentTypeName) || other.paymentTypeName == paymentTypeName)&&(identical(other.accountCode, accountCode) || other.accountCode == accountCode)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentTypeId,isPayable,isApplied,paymentTypeName,accountCode,accountName);

@override
String toString() {
  return 'PaymentType(paymentTypeId: $paymentTypeId, isPayable: $isPayable, isApplied: $isApplied, paymentTypeName: $paymentTypeName, accountCode: $accountCode, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class $PaymentTypeCopyWith<$Res>  {
  factory $PaymentTypeCopyWith(PaymentType value, $Res Function(PaymentType) _then) = _$PaymentTypeCopyWithImpl;
@useResult
$Res call({
 String paymentTypeId, bool isPayable, bool isApplied, String paymentTypeName, String accountCode, String accountName
});




}
/// @nodoc
class _$PaymentTypeCopyWithImpl<$Res>
    implements $PaymentTypeCopyWith<$Res> {
  _$PaymentTypeCopyWithImpl(this._self, this._then);

  final PaymentType _self;
  final $Res Function(PaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentTypeId = null,Object? isPayable = null,Object? isApplied = null,Object? paymentTypeName = null,Object? accountCode = null,Object? accountName = null,}) {
  return _then(_self.copyWith(
paymentTypeId: null == paymentTypeId ? _self.paymentTypeId : paymentTypeId // ignore: cast_nullable_to_non_nullable
as String,isPayable: null == isPayable ? _self.isPayable : isPayable // ignore: cast_nullable_to_non_nullable
as bool,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,paymentTypeName: null == paymentTypeName ? _self.paymentTypeName : paymentTypeName // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentType].
extension PaymentTypePatterns on PaymentType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentType value)  $default,){
final _that = this;
switch (_that) {
case _PaymentType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentType value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String paymentTypeId,  bool isPayable,  bool isApplied,  String paymentTypeName,  String accountCode,  String accountName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentType() when $default != null:
return $default(_that.paymentTypeId,_that.isPayable,_that.isApplied,_that.paymentTypeName,_that.accountCode,_that.accountName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String paymentTypeId,  bool isPayable,  bool isApplied,  String paymentTypeName,  String accountCode,  String accountName)  $default,) {final _that = this;
switch (_that) {
case _PaymentType():
return $default(_that.paymentTypeId,_that.isPayable,_that.isApplied,_that.paymentTypeName,_that.accountCode,_that.accountName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String paymentTypeId,  bool isPayable,  bool isApplied,  String paymentTypeName,  String accountCode,  String accountName)?  $default,) {final _that = this;
switch (_that) {
case _PaymentType() when $default != null:
return $default(_that.paymentTypeId,_that.isPayable,_that.isApplied,_that.paymentTypeName,_that.accountCode,_that.accountName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentType extends PaymentType {
   _PaymentType({this.paymentTypeId = '', this.isPayable = false, this.isApplied = false, this.paymentTypeName = '', this.accountCode = '', this.accountName = ''}): super._();
  factory _PaymentType.fromJson(Map<String, dynamic> json) => _$PaymentTypeFromJson(json);

@override@JsonKey() final  String paymentTypeId;
@override@JsonKey() final  bool isPayable;
@override@JsonKey() final  bool isApplied;
@override@JsonKey() final  String paymentTypeName;
@override@JsonKey() final  String accountCode;
@override@JsonKey() final  String accountName;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentTypeCopyWith<_PaymentType> get copyWith => __$PaymentTypeCopyWithImpl<_PaymentType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentType&&(identical(other.paymentTypeId, paymentTypeId) || other.paymentTypeId == paymentTypeId)&&(identical(other.isPayable, isPayable) || other.isPayable == isPayable)&&(identical(other.isApplied, isApplied) || other.isApplied == isApplied)&&(identical(other.paymentTypeName, paymentTypeName) || other.paymentTypeName == paymentTypeName)&&(identical(other.accountCode, accountCode) || other.accountCode == accountCode)&&(identical(other.accountName, accountName) || other.accountName == accountName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,paymentTypeId,isPayable,isApplied,paymentTypeName,accountCode,accountName);

@override
String toString() {
  return 'PaymentType(paymentTypeId: $paymentTypeId, isPayable: $isPayable, isApplied: $isApplied, paymentTypeName: $paymentTypeName, accountCode: $accountCode, accountName: $accountName)';
}


}

/// @nodoc
abstract mixin class _$PaymentTypeCopyWith<$Res> implements $PaymentTypeCopyWith<$Res> {
  factory _$PaymentTypeCopyWith(_PaymentType value, $Res Function(_PaymentType) _then) = __$PaymentTypeCopyWithImpl;
@override @useResult
$Res call({
 String paymentTypeId, bool isPayable, bool isApplied, String paymentTypeName, String accountCode, String accountName
});




}
/// @nodoc
class __$PaymentTypeCopyWithImpl<$Res>
    implements _$PaymentTypeCopyWith<$Res> {
  __$PaymentTypeCopyWithImpl(this._self, this._then);

  final _PaymentType _self;
  final $Res Function(_PaymentType) _then;

/// Create a copy of PaymentType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentTypeId = null,Object? isPayable = null,Object? isApplied = null,Object? paymentTypeName = null,Object? accountCode = null,Object? accountName = null,}) {
  return _then(_PaymentType(
paymentTypeId: null == paymentTypeId ? _self.paymentTypeId : paymentTypeId // ignore: cast_nullable_to_non_nullable
as String,isPayable: null == isPayable ? _self.isPayable : isPayable // ignore: cast_nullable_to_non_nullable
as bool,isApplied: null == isApplied ? _self.isApplied : isApplied // ignore: cast_nullable_to_non_nullable
as bool,paymentTypeName: null == paymentTypeName ? _self.paymentTypeName : paymentTypeName // ignore: cast_nullable_to_non_nullable
as String,accountCode: null == accountCode ? _self.accountCode : accountCode // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
