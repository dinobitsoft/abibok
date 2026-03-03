// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyUser {

@PartyTypeConverter() PartyType? get type; String? get partyId; String? get pseudoId;@RoleConverter() Role? get role;@Uint8ListConverter() Uint8List? get image; String? get name;// either first/last name or company name
 String? get email; String? get url; String? get telephoneNr; Address? get address; PaymentMethod? get paymentMethod; Company? get company;// related company if type == user
 List<User>? get employees;
/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyUserCopyWith<CompanyUser> get copyWith => _$CompanyUserCopyWithImpl<CompanyUser>(this as CompanyUser, _$identity);

  /// Serializes this CompanyUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyUser&&(identical(other.type, type) || other.type == type)&&(identical(other.partyId, partyId) || other.partyId == partyId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.url, url) || other.url == url)&&(identical(other.telephoneNr, telephoneNr) || other.telephoneNr == telephoneNr)&&(identical(other.address, address) || other.address == address)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.employees, employees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,partyId,pseudoId,role,const DeepCollectionEquality().hash(image),name,email,url,telephoneNr,address,paymentMethod,company,const DeepCollectionEquality().hash(employees));



}

/// @nodoc
abstract mixin class $CompanyUserCopyWith<$Res>  {
  factory $CompanyUserCopyWith(CompanyUser value, $Res Function(CompanyUser) _then) = _$CompanyUserCopyWithImpl;
@useResult
$Res call({
@PartyTypeConverter() PartyType? type, String? partyId, String? pseudoId,@RoleConverter() Role? role,@Uint8ListConverter() Uint8List? image, String? name, String? email, String? url, String? telephoneNr, Address? address, PaymentMethod? paymentMethod, Company? company, List<User>? employees
});


$AddressCopyWith<$Res>? get address;$PaymentMethodCopyWith<$Res>? get paymentMethod;$CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class _$CompanyUserCopyWithImpl<$Res>
    implements $CompanyUserCopyWith<$Res> {
  _$CompanyUserCopyWithImpl(this._self, this._then);

  final CompanyUser _self;
  final $Res Function(CompanyUser) _then;

/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? partyId = freezed,Object? pseudoId = freezed,Object? role = freezed,Object? image = freezed,Object? name = freezed,Object? email = freezed,Object? url = freezed,Object? telephoneNr = freezed,Object? address = freezed,Object? paymentMethod = freezed,Object? company = freezed,Object? employees = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PartyType?,partyId: freezed == partyId ? _self.partyId : partyId // ignore: cast_nullable_to_non_nullable
as String?,pseudoId: freezed == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,telephoneNr: freezed == telephoneNr ? _self.telephoneNr : telephoneNr // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,employees: freezed == employees ? _self.employees : employees // ignore: cast_nullable_to_non_nullable
as List<User>?,
  ));
}
/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompanyUser].
extension CompanyUserPatterns on CompanyUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyUser value)  $default,){
final _that = this;
switch (_that) {
case _CompanyUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyUser value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@PartyTypeConverter()  PartyType? type,  String? partyId,  String? pseudoId, @RoleConverter()  Role? role, @Uint8ListConverter()  Uint8List? image,  String? name,  String? email,  String? url,  String? telephoneNr,  Address? address,  PaymentMethod? paymentMethod,  Company? company,  List<User>? employees)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyUser() when $default != null:
return $default(_that.type,_that.partyId,_that.pseudoId,_that.role,_that.image,_that.name,_that.email,_that.url,_that.telephoneNr,_that.address,_that.paymentMethod,_that.company,_that.employees);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@PartyTypeConverter()  PartyType? type,  String? partyId,  String? pseudoId, @RoleConverter()  Role? role, @Uint8ListConverter()  Uint8List? image,  String? name,  String? email,  String? url,  String? telephoneNr,  Address? address,  PaymentMethod? paymentMethod,  Company? company,  List<User>? employees)  $default,) {final _that = this;
switch (_that) {
case _CompanyUser():
return $default(_that.type,_that.partyId,_that.pseudoId,_that.role,_that.image,_that.name,_that.email,_that.url,_that.telephoneNr,_that.address,_that.paymentMethod,_that.company,_that.employees);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@PartyTypeConverter()  PartyType? type,  String? partyId,  String? pseudoId, @RoleConverter()  Role? role, @Uint8ListConverter()  Uint8List? image,  String? name,  String? email,  String? url,  String? telephoneNr,  Address? address,  PaymentMethod? paymentMethod,  Company? company,  List<User>? employees)?  $default,) {final _that = this;
switch (_that) {
case _CompanyUser() when $default != null:
return $default(_that.type,_that.partyId,_that.pseudoId,_that.role,_that.image,_that.name,_that.email,_that.url,_that.telephoneNr,_that.address,_that.paymentMethod,_that.company,_that.employees);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyUser extends CompanyUser {
   _CompanyUser({@PartyTypeConverter() this.type, this.partyId, this.pseudoId, @RoleConverter() this.role, @Uint8ListConverter() this.image, this.name, this.email, this.url, this.telephoneNr, this.address, this.paymentMethod, this.company, final  List<User>? employees}): _employees = employees,super._();
  factory _CompanyUser.fromJson(Map<String, dynamic> json) => _$CompanyUserFromJson(json);

@override@PartyTypeConverter() final  PartyType? type;
@override final  String? partyId;
@override final  String? pseudoId;
@override@RoleConverter() final  Role? role;
@override@Uint8ListConverter() final  Uint8List? image;
@override final  String? name;
// either first/last name or company name
@override final  String? email;
@override final  String? url;
@override final  String? telephoneNr;
@override final  Address? address;
@override final  PaymentMethod? paymentMethod;
@override final  Company? company;
// related company if type == user
 final  List<User>? _employees;
// related company if type == user
@override List<User>? get employees {
  final value = _employees;
  if (value == null) return null;
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyUserCopyWith<_CompanyUser> get copyWith => __$CompanyUserCopyWithImpl<_CompanyUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyUser&&(identical(other.type, type) || other.type == type)&&(identical(other.partyId, partyId) || other.partyId == partyId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.url, url) || other.url == url)&&(identical(other.telephoneNr, telephoneNr) || other.telephoneNr == telephoneNr)&&(identical(other.address, address) || other.address == address)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._employees, _employees));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,partyId,pseudoId,role,const DeepCollectionEquality().hash(image),name,email,url,telephoneNr,address,paymentMethod,company,const DeepCollectionEquality().hash(_employees));



}

/// @nodoc
abstract mixin class _$CompanyUserCopyWith<$Res> implements $CompanyUserCopyWith<$Res> {
  factory _$CompanyUserCopyWith(_CompanyUser value, $Res Function(_CompanyUser) _then) = __$CompanyUserCopyWithImpl;
@override @useResult
$Res call({
@PartyTypeConverter() PartyType? type, String? partyId, String? pseudoId,@RoleConverter() Role? role,@Uint8ListConverter() Uint8List? image, String? name, String? email, String? url, String? telephoneNr, Address? address, PaymentMethod? paymentMethod, Company? company, List<User>? employees
});


@override $AddressCopyWith<$Res>? get address;@override $PaymentMethodCopyWith<$Res>? get paymentMethod;@override $CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class __$CompanyUserCopyWithImpl<$Res>
    implements _$CompanyUserCopyWith<$Res> {
  __$CompanyUserCopyWithImpl(this._self, this._then);

  final _CompanyUser _self;
  final $Res Function(_CompanyUser) _then;

/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? partyId = freezed,Object? pseudoId = freezed,Object? role = freezed,Object? image = freezed,Object? name = freezed,Object? email = freezed,Object? url = freezed,Object? telephoneNr = freezed,Object? address = freezed,Object? paymentMethod = freezed,Object? company = freezed,Object? employees = freezed,}) {
  return _then(_CompanyUser(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PartyType?,partyId: freezed == partyId ? _self.partyId : partyId // ignore: cast_nullable_to_non_nullable
as String?,pseudoId: freezed == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,telephoneNr: freezed == telephoneNr ? _self.telephoneNr : telephoneNr // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,employees: freezed == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<User>?,
  ));
}

/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_self.paymentMethod == null) {
    return null;
  }

  return $PaymentMethodCopyWith<$Res>(_self.paymentMethod!, (value) {
    return _then(_self.copyWith(paymentMethod: value));
  });
}/// Create a copy of CompanyUser
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res>? get company {
    if (_self.company == null) {
    return null;
  }

  return $CompanyCopyWith<$Res>(_self.company!, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}

// dart format on
