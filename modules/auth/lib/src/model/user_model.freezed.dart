// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 String? get partyId;// allocated by system cannot be changed.
 String? get pseudoId;@RoleConverter() Role? get role; String? get userId;// allocated by system cannot be changed.
 String? get firstName; String? get lastName;/// login account
 bool? get loginDisabled; String? get loginName; String? get fullName;/// email address of this person
 String? get email;/// website address of this person
 String? get url;/// postal address and payment method
 Address? get address; PaymentMethod? get paymentMethod;/// when customer register they can give their telephonenr to use as membername
 String? get telephoneNr;/// admin, employee, customer, supplier etc...
@UserGroupConverter() UserGroup? get userGroup;// the localization variables
 String get language; String get currency; String? get timeZoneOffset;@Uint8ListConverter() Uint8List? get image; Company? get company;/// field is used to see of a user registered with an app,
/// when not will show the extra info screen at first login.
 List<String> get appsUsed;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.partyId, partyId) || other.partyId == partyId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.role, role) || other.role == role)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.loginDisabled, loginDisabled) || other.loginDisabled == loginDisabled)&&(identical(other.loginName, loginName) || other.loginName == loginName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.telephoneNr, telephoneNr) || other.telephoneNr == telephoneNr)&&(identical(other.userGroup, userGroup) || other.userGroup == userGroup)&&(identical(other.language, language) || other.language == language)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.timeZoneOffset, timeZoneOffset) || other.timeZoneOffset == timeZoneOffset)&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.appsUsed, appsUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,partyId,pseudoId,role,userId,firstName,lastName,loginDisabled,loginName,fullName,email,url,address,paymentMethod,telephoneNr,userGroup,language,currency,timeZoneOffset,const DeepCollectionEquality().hash(image),company,const DeepCollectionEquality().hash(appsUsed)]);



}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String? partyId, String? pseudoId,@RoleConverter() Role? role, String? userId, String? firstName, String? lastName, bool? loginDisabled, String? loginName, String? fullName, String? email, String? url, Address? address, PaymentMethod? paymentMethod, String? telephoneNr,@UserGroupConverter() UserGroup? userGroup, String language, String currency, String? timeZoneOffset,@Uint8ListConverter() Uint8List? image, Company? company, List<String> appsUsed
});


$AddressCopyWith<$Res>? get address;$PaymentMethodCopyWith<$Res>? get paymentMethod;$CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? partyId = freezed,Object? pseudoId = freezed,Object? role = freezed,Object? userId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? loginDisabled = freezed,Object? loginName = freezed,Object? fullName = freezed,Object? email = freezed,Object? url = freezed,Object? address = freezed,Object? paymentMethod = freezed,Object? telephoneNr = freezed,Object? userGroup = freezed,Object? language = null,Object? currency = null,Object? timeZoneOffset = freezed,Object? image = freezed,Object? company = freezed,Object? appsUsed = null,}) {
  return _then(_self.copyWith(
partyId: freezed == partyId ? _self.partyId : partyId // ignore: cast_nullable_to_non_nullable
as String?,pseudoId: freezed == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,loginDisabled: freezed == loginDisabled ? _self.loginDisabled : loginDisabled // ignore: cast_nullable_to_non_nullable
as bool?,loginName: freezed == loginName ? _self.loginName : loginName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,telephoneNr: freezed == telephoneNr ? _self.telephoneNr : telephoneNr // ignore: cast_nullable_to_non_nullable
as String?,userGroup: freezed == userGroup ? _self.userGroup : userGroup // ignore: cast_nullable_to_non_nullable
as UserGroup?,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,timeZoneOffset: freezed == timeZoneOffset ? _self.timeZoneOffset : timeZoneOffset // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,appsUsed: null == appsUsed ? _self.appsUsed : appsUsed // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of User
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
}/// Create a copy of User
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
}/// Create a copy of User
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


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? partyId,  String? pseudoId, @RoleConverter()  Role? role,  String? userId,  String? firstName,  String? lastName,  bool? loginDisabled,  String? loginName,  String? fullName,  String? email,  String? url,  Address? address,  PaymentMethod? paymentMethod,  String? telephoneNr, @UserGroupConverter()  UserGroup? userGroup,  String language,  String currency,  String? timeZoneOffset, @Uint8ListConverter()  Uint8List? image,  Company? company,  List<String> appsUsed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.partyId,_that.pseudoId,_that.role,_that.userId,_that.firstName,_that.lastName,_that.loginDisabled,_that.loginName,_that.fullName,_that.email,_that.url,_that.address,_that.paymentMethod,_that.telephoneNr,_that.userGroup,_that.language,_that.currency,_that.timeZoneOffset,_that.image,_that.company,_that.appsUsed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? partyId,  String? pseudoId, @RoleConverter()  Role? role,  String? userId,  String? firstName,  String? lastName,  bool? loginDisabled,  String? loginName,  String? fullName,  String? email,  String? url,  Address? address,  PaymentMethod? paymentMethod,  String? telephoneNr, @UserGroupConverter()  UserGroup? userGroup,  String language,  String currency,  String? timeZoneOffset, @Uint8ListConverter()  Uint8List? image,  Company? company,  List<String> appsUsed)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.partyId,_that.pseudoId,_that.role,_that.userId,_that.firstName,_that.lastName,_that.loginDisabled,_that.loginName,_that.fullName,_that.email,_that.url,_that.address,_that.paymentMethod,_that.telephoneNr,_that.userGroup,_that.language,_that.currency,_that.timeZoneOffset,_that.image,_that.company,_that.appsUsed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? partyId,  String? pseudoId, @RoleConverter()  Role? role,  String? userId,  String? firstName,  String? lastName,  bool? loginDisabled,  String? loginName,  String? fullName,  String? email,  String? url,  Address? address,  PaymentMethod? paymentMethod,  String? telephoneNr, @UserGroupConverter()  UserGroup? userGroup,  String language,  String currency,  String? timeZoneOffset, @Uint8ListConverter()  Uint8List? image,  Company? company,  List<String> appsUsed)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.partyId,_that.pseudoId,_that.role,_that.userId,_that.firstName,_that.lastName,_that.loginDisabled,_that.loginName,_that.fullName,_that.email,_that.url,_that.address,_that.paymentMethod,_that.telephoneNr,_that.userGroup,_that.language,_that.currency,_that.timeZoneOffset,_that.image,_that.company,_that.appsUsed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User extends User {
   _User({this.partyId, this.pseudoId, @RoleConverter() this.role, this.userId, this.firstName, this.lastName, this.loginDisabled, this.loginName, this.fullName, this.email, this.url, this.address, this.paymentMethod, this.telephoneNr, @UserGroupConverter() this.userGroup, this.language = 'EN', this.currency = 'THB', this.timeZoneOffset, @Uint8ListConverter() this.image, this.company, final  List<String> appsUsed = const []}): _appsUsed = appsUsed,super._();
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String? partyId;
// allocated by system cannot be changed.
@override final  String? pseudoId;
@override@RoleConverter() final  Role? role;
@override final  String? userId;
// allocated by system cannot be changed.
@override final  String? firstName;
@override final  String? lastName;
/// login account
@override final  bool? loginDisabled;
@override final  String? loginName;
@override final  String? fullName;
/// email address of this person
@override final  String? email;
/// website address of this person
@override final  String? url;
/// postal address and payment method
@override final  Address? address;
@override final  PaymentMethod? paymentMethod;
/// when customer register they can give their telephonenr to use as membername
@override final  String? telephoneNr;
/// admin, employee, customer, supplier etc...
@override@UserGroupConverter() final  UserGroup? userGroup;
// the localization variables
@override@JsonKey() final  String language;
@override@JsonKey() final  String currency;
@override final  String? timeZoneOffset;
@override@Uint8ListConverter() final  Uint8List? image;
@override final  Company? company;
/// field is used to see of a user registered with an app,
/// when not will show the extra info screen at first login.
 final  List<String> _appsUsed;
/// field is used to see of a user registered with an app,
/// when not will show the extra info screen at first login.
@override@JsonKey() List<String> get appsUsed {
  if (_appsUsed is EqualUnmodifiableListView) return _appsUsed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_appsUsed);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.partyId, partyId) || other.partyId == partyId)&&(identical(other.pseudoId, pseudoId) || other.pseudoId == pseudoId)&&(identical(other.role, role) || other.role == role)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.loginDisabled, loginDisabled) || other.loginDisabled == loginDisabled)&&(identical(other.loginName, loginName) || other.loginName == loginName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.telephoneNr, telephoneNr) || other.telephoneNr == telephoneNr)&&(identical(other.userGroup, userGroup) || other.userGroup == userGroup)&&(identical(other.language, language) || other.language == language)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.timeZoneOffset, timeZoneOffset) || other.timeZoneOffset == timeZoneOffset)&&const DeepCollectionEquality().equals(other.image, image)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._appsUsed, _appsUsed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,partyId,pseudoId,role,userId,firstName,lastName,loginDisabled,loginName,fullName,email,url,address,paymentMethod,telephoneNr,userGroup,language,currency,timeZoneOffset,const DeepCollectionEquality().hash(image),company,const DeepCollectionEquality().hash(_appsUsed)]);



}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String? partyId, String? pseudoId,@RoleConverter() Role? role, String? userId, String? firstName, String? lastName, bool? loginDisabled, String? loginName, String? fullName, String? email, String? url, Address? address, PaymentMethod? paymentMethod, String? telephoneNr,@UserGroupConverter() UserGroup? userGroup, String language, String currency, String? timeZoneOffset,@Uint8ListConverter() Uint8List? image, Company? company, List<String> appsUsed
});


@override $AddressCopyWith<$Res>? get address;@override $PaymentMethodCopyWith<$Res>? get paymentMethod;@override $CompanyCopyWith<$Res>? get company;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? partyId = freezed,Object? pseudoId = freezed,Object? role = freezed,Object? userId = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? loginDisabled = freezed,Object? loginName = freezed,Object? fullName = freezed,Object? email = freezed,Object? url = freezed,Object? address = freezed,Object? paymentMethod = freezed,Object? telephoneNr = freezed,Object? userGroup = freezed,Object? language = null,Object? currency = null,Object? timeZoneOffset = freezed,Object? image = freezed,Object? company = freezed,Object? appsUsed = null,}) {
  return _then(_User(
partyId: freezed == partyId ? _self.partyId : partyId // ignore: cast_nullable_to_non_nullable
as String?,pseudoId: freezed == pseudoId ? _self.pseudoId : pseudoId // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,loginDisabled: freezed == loginDisabled ? _self.loginDisabled : loginDisabled // ignore: cast_nullable_to_non_nullable
as bool?,loginName: freezed == loginName ? _self.loginName : loginName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as PaymentMethod?,telephoneNr: freezed == telephoneNr ? _self.telephoneNr : telephoneNr // ignore: cast_nullable_to_non_nullable
as String?,userGroup: freezed == userGroup ? _self.userGroup : userGroup // ignore: cast_nullable_to_non_nullable
as UserGroup?,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,timeZoneOffset: freezed == timeZoneOffset ? _self.timeZoneOffset : timeZoneOffset // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as Uint8List?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,appsUsed: null == appsUsed ? _self._appsUsed : appsUsed // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of User
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
}/// Create a copy of User
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
}/// Create a copy of User
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


/// @nodoc
mixin _$Users {

 List<User> get users;
/// Create a copy of Users
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersCopyWith<Users> get copyWith => _$UsersCopyWithImpl<Users>(this as Users, _$identity);

  /// Serializes this Users to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Users&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'Users(users: $users)';
}


}

/// @nodoc
abstract mixin class $UsersCopyWith<$Res>  {
  factory $UsersCopyWith(Users value, $Res Function(Users) _then) = _$UsersCopyWithImpl;
@useResult
$Res call({
 List<User> users
});




}
/// @nodoc
class _$UsersCopyWithImpl<$Res>
    implements $UsersCopyWith<$Res> {
  _$UsersCopyWithImpl(this._self, this._then);

  final Users _self;
  final $Res Function(Users) _then;

/// Create a copy of Users
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}

}


/// Adds pattern-matching-related methods to [Users].
extension UsersPatterns on Users {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Users value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Users() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Users value)  $default,){
final _that = this;
switch (_that) {
case _Users():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Users value)?  $default,){
final _that = this;
switch (_that) {
case _Users() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<User> users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Users() when $default != null:
return $default(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<User> users)  $default,) {final _that = this;
switch (_that) {
case _Users():
return $default(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<User> users)?  $default,) {final _that = this;
switch (_that) {
case _Users() when $default != null:
return $default(_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Users extends Users {
   _Users({final  List<User> users = const []}): _users = users,super._();
  factory _Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

 final  List<User> _users;
@override@JsonKey() List<User> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of Users
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersCopyWith<_Users> get copyWith => __$UsersCopyWithImpl<_Users>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Users&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'Users(users: $users)';
}


}

/// @nodoc
abstract mixin class _$UsersCopyWith<$Res> implements $UsersCopyWith<$Res> {
  factory _$UsersCopyWith(_Users value, $Res Function(_Users) _then) = __$UsersCopyWithImpl;
@override @useResult
$Res call({
 List<User> users
});




}
/// @nodoc
class __$UsersCopyWithImpl<$Res>
    implements _$UsersCopyWith<$Res> {
  __$UsersCopyWithImpl(this._self, this._then);

  final _Users _self;
  final $Res Function(_Users) _then;

/// Create a copy of Users
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_Users(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<User>,
  ));
}


}

// dart format on
