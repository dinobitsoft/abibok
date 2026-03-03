// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethod {

 String? get ccPaymentMethodId; String? get ccDescription; String? get ccNameOnCard; String? get creditCardNumber; String? get checkNumber;@CreditCardTypeConverter() CreditCardType? get creditCardType; String? get expireMonth; String? get expireYear; String? get cVC;
/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<PaymentMethod> get copyWith => _$PaymentMethodCopyWithImpl<PaymentMethod>(this as PaymentMethod, _$identity);

  /// Serializes this PaymentMethod to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethod&&(identical(other.ccPaymentMethodId, ccPaymentMethodId) || other.ccPaymentMethodId == ccPaymentMethodId)&&(identical(other.ccDescription, ccDescription) || other.ccDescription == ccDescription)&&(identical(other.ccNameOnCard, ccNameOnCard) || other.ccNameOnCard == ccNameOnCard)&&(identical(other.creditCardNumber, creditCardNumber) || other.creditCardNumber == creditCardNumber)&&(identical(other.checkNumber, checkNumber) || other.checkNumber == checkNumber)&&(identical(other.creditCardType, creditCardType) || other.creditCardType == creditCardType)&&(identical(other.expireMonth, expireMonth) || other.expireMonth == expireMonth)&&(identical(other.expireYear, expireYear) || other.expireYear == expireYear)&&(identical(other.cVC, cVC) || other.cVC == cVC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ccPaymentMethodId,ccDescription,ccNameOnCard,creditCardNumber,checkNumber,creditCardType,expireMonth,expireYear,cVC);

@override
String toString() {
  return 'PaymentMethod(ccPaymentMethodId: $ccPaymentMethodId, ccDescription: $ccDescription, ccNameOnCard: $ccNameOnCard, creditCardNumber: $creditCardNumber, checkNumber: $checkNumber, creditCardType: $creditCardType, expireMonth: $expireMonth, expireYear: $expireYear, cVC: $cVC)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodCopyWith<$Res>  {
  factory $PaymentMethodCopyWith(PaymentMethod value, $Res Function(PaymentMethod) _then) = _$PaymentMethodCopyWithImpl;
@useResult
$Res call({
 String? ccPaymentMethodId, String? ccDescription, String? ccNameOnCard, String? creditCardNumber, String? checkNumber,@CreditCardTypeConverter() CreditCardType? creditCardType, String? expireMonth, String? expireYear, String? cVC
});




}
/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._self, this._then);

  final PaymentMethod _self;
  final $Res Function(PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ccPaymentMethodId = freezed,Object? ccDescription = freezed,Object? ccNameOnCard = freezed,Object? creditCardNumber = freezed,Object? checkNumber = freezed,Object? creditCardType = freezed,Object? expireMonth = freezed,Object? expireYear = freezed,Object? cVC = freezed,}) {
  return _then(_self.copyWith(
ccPaymentMethodId: freezed == ccPaymentMethodId ? _self.ccPaymentMethodId : ccPaymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,ccDescription: freezed == ccDescription ? _self.ccDescription : ccDescription // ignore: cast_nullable_to_non_nullable
as String?,ccNameOnCard: freezed == ccNameOnCard ? _self.ccNameOnCard : ccNameOnCard // ignore: cast_nullable_to_non_nullable
as String?,creditCardNumber: freezed == creditCardNumber ? _self.creditCardNumber : creditCardNumber // ignore: cast_nullable_to_non_nullable
as String?,checkNumber: freezed == checkNumber ? _self.checkNumber : checkNumber // ignore: cast_nullable_to_non_nullable
as String?,creditCardType: freezed == creditCardType ? _self.creditCardType : creditCardType // ignore: cast_nullable_to_non_nullable
as CreditCardType?,expireMonth: freezed == expireMonth ? _self.expireMonth : expireMonth // ignore: cast_nullable_to_non_nullable
as String?,expireYear: freezed == expireYear ? _self.expireYear : expireYear // ignore: cast_nullable_to_non_nullable
as String?,cVC: freezed == cVC ? _self.cVC : cVC // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethod].
extension PaymentMethodPatterns on PaymentMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethod value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethod value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethod value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? ccPaymentMethodId,  String? ccDescription,  String? ccNameOnCard,  String? creditCardNumber,  String? checkNumber, @CreditCardTypeConverter()  CreditCardType? creditCardType,  String? expireMonth,  String? expireYear,  String? cVC)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that.ccPaymentMethodId,_that.ccDescription,_that.ccNameOnCard,_that.creditCardNumber,_that.checkNumber,_that.creditCardType,_that.expireMonth,_that.expireYear,_that.cVC);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? ccPaymentMethodId,  String? ccDescription,  String? ccNameOnCard,  String? creditCardNumber,  String? checkNumber, @CreditCardTypeConverter()  CreditCardType? creditCardType,  String? expireMonth,  String? expireYear,  String? cVC)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethod():
return $default(_that.ccPaymentMethodId,_that.ccDescription,_that.ccNameOnCard,_that.creditCardNumber,_that.checkNumber,_that.creditCardType,_that.expireMonth,_that.expireYear,_that.cVC);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? ccPaymentMethodId,  String? ccDescription,  String? ccNameOnCard,  String? creditCardNumber,  String? checkNumber, @CreditCardTypeConverter()  CreditCardType? creditCardType,  String? expireMonth,  String? expireYear,  String? cVC)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethod() when $default != null:
return $default(_that.ccPaymentMethodId,_that.ccDescription,_that.ccNameOnCard,_that.creditCardNumber,_that.checkNumber,_that.creditCardType,_that.expireMonth,_that.expireYear,_that.cVC);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethod extends PaymentMethod {
   _PaymentMethod({this.ccPaymentMethodId, this.ccDescription, this.ccNameOnCard, this.creditCardNumber, this.checkNumber, @CreditCardTypeConverter() this.creditCardType, this.expireMonth, this.expireYear, this.cVC}): super._();
  factory _PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

@override final  String? ccPaymentMethodId;
@override final  String? ccDescription;
@override final  String? ccNameOnCard;
@override final  String? creditCardNumber;
@override final  String? checkNumber;
@override@CreditCardTypeConverter() final  CreditCardType? creditCardType;
@override final  String? expireMonth;
@override final  String? expireYear;
@override final  String? cVC;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodCopyWith<_PaymentMethod> get copyWith => __$PaymentMethodCopyWithImpl<_PaymentMethod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethod&&(identical(other.ccPaymentMethodId, ccPaymentMethodId) || other.ccPaymentMethodId == ccPaymentMethodId)&&(identical(other.ccDescription, ccDescription) || other.ccDescription == ccDescription)&&(identical(other.ccNameOnCard, ccNameOnCard) || other.ccNameOnCard == ccNameOnCard)&&(identical(other.creditCardNumber, creditCardNumber) || other.creditCardNumber == creditCardNumber)&&(identical(other.checkNumber, checkNumber) || other.checkNumber == checkNumber)&&(identical(other.creditCardType, creditCardType) || other.creditCardType == creditCardType)&&(identical(other.expireMonth, expireMonth) || other.expireMonth == expireMonth)&&(identical(other.expireYear, expireYear) || other.expireYear == expireYear)&&(identical(other.cVC, cVC) || other.cVC == cVC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ccPaymentMethodId,ccDescription,ccNameOnCard,creditCardNumber,checkNumber,creditCardType,expireMonth,expireYear,cVC);

@override
String toString() {
  return 'PaymentMethod(ccPaymentMethodId: $ccPaymentMethodId, ccDescription: $ccDescription, ccNameOnCard: $ccNameOnCard, creditCardNumber: $creditCardNumber, checkNumber: $checkNumber, creditCardType: $creditCardType, expireMonth: $expireMonth, expireYear: $expireYear, cVC: $cVC)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodCopyWith<$Res> implements $PaymentMethodCopyWith<$Res> {
  factory _$PaymentMethodCopyWith(_PaymentMethod value, $Res Function(_PaymentMethod) _then) = __$PaymentMethodCopyWithImpl;
@override @useResult
$Res call({
 String? ccPaymentMethodId, String? ccDescription, String? ccNameOnCard, String? creditCardNumber, String? checkNumber,@CreditCardTypeConverter() CreditCardType? creditCardType, String? expireMonth, String? expireYear, String? cVC
});




}
/// @nodoc
class __$PaymentMethodCopyWithImpl<$Res>
    implements _$PaymentMethodCopyWith<$Res> {
  __$PaymentMethodCopyWithImpl(this._self, this._then);

  final _PaymentMethod _self;
  final $Res Function(_PaymentMethod) _then;

/// Create a copy of PaymentMethod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ccPaymentMethodId = freezed,Object? ccDescription = freezed,Object? ccNameOnCard = freezed,Object? creditCardNumber = freezed,Object? checkNumber = freezed,Object? creditCardType = freezed,Object? expireMonth = freezed,Object? expireYear = freezed,Object? cVC = freezed,}) {
  return _then(_PaymentMethod(
ccPaymentMethodId: freezed == ccPaymentMethodId ? _self.ccPaymentMethodId : ccPaymentMethodId // ignore: cast_nullable_to_non_nullable
as String?,ccDescription: freezed == ccDescription ? _self.ccDescription : ccDescription // ignore: cast_nullable_to_non_nullable
as String?,ccNameOnCard: freezed == ccNameOnCard ? _self.ccNameOnCard : ccNameOnCard // ignore: cast_nullable_to_non_nullable
as String?,creditCardNumber: freezed == creditCardNumber ? _self.creditCardNumber : creditCardNumber // ignore: cast_nullable_to_non_nullable
as String?,checkNumber: freezed == checkNumber ? _self.checkNumber : checkNumber // ignore: cast_nullable_to_non_nullable
as String?,creditCardType: freezed == creditCardType ? _self.creditCardType : creditCardType // ignore: cast_nullable_to_non_nullable
as CreditCardType?,expireMonth: freezed == expireMonth ? _self.expireMonth : expireMonth // ignore: cast_nullable_to_non_nullable
as String?,expireYear: freezed == expireYear ? _self.expireYear : expireYear // ignore: cast_nullable_to_non_nullable
as String?,cVC: freezed == cVC ? _self.cVC : cVC // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
