// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Authenticate {

 String? get apiKey;// api or actions as changePassword, moreinfo
 String? get classificationId;// appname
 String? get moquiSessionToken; String? get ownerPartyId; CompanyUser? get companyUser; Company? get company; User? get user; Stats? get stats;
/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticateCopyWith<Authenticate> get copyWith => _$AuthenticateCopyWithImpl<Authenticate>(this as Authenticate, _$identity);

  /// Serializes this Authenticate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Authenticate&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.classificationId, classificationId) || other.classificationId == classificationId)&&(identical(other.moquiSessionToken, moquiSessionToken) || other.moquiSessionToken == moquiSessionToken)&&(identical(other.ownerPartyId, ownerPartyId) || other.ownerPartyId == ownerPartyId)&&(identical(other.companyUser, companyUser) || other.companyUser == companyUser)&&(identical(other.company, company) || other.company == company)&&(identical(other.user, user) || other.user == user)&&(identical(other.stats, stats) || other.stats == stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiKey,classificationId,moquiSessionToken,ownerPartyId,companyUser,company,user,stats);



}

/// @nodoc
abstract mixin class $AuthenticateCopyWith<$Res>  {
  factory $AuthenticateCopyWith(Authenticate value, $Res Function(Authenticate) _then) = _$AuthenticateCopyWithImpl;
@useResult
$Res call({
 String? apiKey, String? classificationId, String? moquiSessionToken, String? ownerPartyId, CompanyUser? companyUser, Company? company, User? user, Stats? stats
});


$CompanyUserCopyWith<$Res>? get companyUser;$CompanyCopyWith<$Res>? get company;$UserCopyWith<$Res>? get user;$StatsCopyWith<$Res>? get stats;

}
/// @nodoc
class _$AuthenticateCopyWithImpl<$Res>
    implements $AuthenticateCopyWith<$Res> {
  _$AuthenticateCopyWithImpl(this._self, this._then);

  final Authenticate _self;
  final $Res Function(Authenticate) _then;

/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apiKey = freezed,Object? classificationId = freezed,Object? moquiSessionToken = freezed,Object? ownerPartyId = freezed,Object? companyUser = freezed,Object? company = freezed,Object? user = freezed,Object? stats = freezed,}) {
  return _then(_self.copyWith(
apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,classificationId: freezed == classificationId ? _self.classificationId : classificationId // ignore: cast_nullable_to_non_nullable
as String?,moquiSessionToken: freezed == moquiSessionToken ? _self.moquiSessionToken : moquiSessionToken // ignore: cast_nullable_to_non_nullable
as String?,ownerPartyId: freezed == ownerPartyId ? _self.ownerPartyId : ownerPartyId // ignore: cast_nullable_to_non_nullable
as String?,companyUser: freezed == companyUser ? _self.companyUser : companyUser // ignore: cast_nullable_to_non_nullable
as CompanyUser?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as Stats?,
  ));
}
/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyUserCopyWith<$Res>? get companyUser {
    if (_self.companyUser == null) {
    return null;
  }

  return $CompanyUserCopyWith<$Res>(_self.companyUser!, (value) {
    return _then(_self.copyWith(companyUser: value));
  });
}/// Create a copy of Authenticate
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
}/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
    return null;
  }

  return $StatsCopyWith<$Res>(_self.stats!, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [Authenticate].
extension AuthenticatePatterns on Authenticate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Authenticate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Authenticate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Authenticate value)  $default,){
final _that = this;
switch (_that) {
case _Authenticate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Authenticate value)?  $default,){
final _that = this;
switch (_that) {
case _Authenticate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? apiKey,  String? classificationId,  String? moquiSessionToken,  String? ownerPartyId,  CompanyUser? companyUser,  Company? company,  User? user,  Stats? stats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Authenticate() when $default != null:
return $default(_that.apiKey,_that.classificationId,_that.moquiSessionToken,_that.ownerPartyId,_that.companyUser,_that.company,_that.user,_that.stats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? apiKey,  String? classificationId,  String? moquiSessionToken,  String? ownerPartyId,  CompanyUser? companyUser,  Company? company,  User? user,  Stats? stats)  $default,) {final _that = this;
switch (_that) {
case _Authenticate():
return $default(_that.apiKey,_that.classificationId,_that.moquiSessionToken,_that.ownerPartyId,_that.companyUser,_that.company,_that.user,_that.stats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? apiKey,  String? classificationId,  String? moquiSessionToken,  String? ownerPartyId,  CompanyUser? companyUser,  Company? company,  User? user,  Stats? stats)?  $default,) {final _that = this;
switch (_that) {
case _Authenticate() when $default != null:
return $default(_that.apiKey,_that.classificationId,_that.moquiSessionToken,_that.ownerPartyId,_that.companyUser,_that.company,_that.user,_that.stats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Authenticate extends Authenticate {
   _Authenticate({this.apiKey, this.classificationId, this.moquiSessionToken, this.ownerPartyId, this.companyUser, this.company, this.user, this.stats}): super._();
  factory _Authenticate.fromJson(Map<String, dynamic> json) => _$AuthenticateFromJson(json);

@override final  String? apiKey;
// api or actions as changePassword, moreinfo
@override final  String? classificationId;
// appname
@override final  String? moquiSessionToken;
@override final  String? ownerPartyId;
@override final  CompanyUser? companyUser;
@override final  Company? company;
@override final  User? user;
@override final  Stats? stats;

/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticateCopyWith<_Authenticate> get copyWith => __$AuthenticateCopyWithImpl<_Authenticate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthenticateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authenticate&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.classificationId, classificationId) || other.classificationId == classificationId)&&(identical(other.moquiSessionToken, moquiSessionToken) || other.moquiSessionToken == moquiSessionToken)&&(identical(other.ownerPartyId, ownerPartyId) || other.ownerPartyId == ownerPartyId)&&(identical(other.companyUser, companyUser) || other.companyUser == companyUser)&&(identical(other.company, company) || other.company == company)&&(identical(other.user, user) || other.user == user)&&(identical(other.stats, stats) || other.stats == stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiKey,classificationId,moquiSessionToken,ownerPartyId,companyUser,company,user,stats);



}

/// @nodoc
abstract mixin class _$AuthenticateCopyWith<$Res> implements $AuthenticateCopyWith<$Res> {
  factory _$AuthenticateCopyWith(_Authenticate value, $Res Function(_Authenticate) _then) = __$AuthenticateCopyWithImpl;
@override @useResult
$Res call({
 String? apiKey, String? classificationId, String? moquiSessionToken, String? ownerPartyId, CompanyUser? companyUser, Company? company, User? user, Stats? stats
});


@override $CompanyUserCopyWith<$Res>? get companyUser;@override $CompanyCopyWith<$Res>? get company;@override $UserCopyWith<$Res>? get user;@override $StatsCopyWith<$Res>? get stats;

}
/// @nodoc
class __$AuthenticateCopyWithImpl<$Res>
    implements _$AuthenticateCopyWith<$Res> {
  __$AuthenticateCopyWithImpl(this._self, this._then);

  final _Authenticate _self;
  final $Res Function(_Authenticate) _then;

/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiKey = freezed,Object? classificationId = freezed,Object? moquiSessionToken = freezed,Object? ownerPartyId = freezed,Object? companyUser = freezed,Object? company = freezed,Object? user = freezed,Object? stats = freezed,}) {
  return _then(_Authenticate(
apiKey: freezed == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String?,classificationId: freezed == classificationId ? _self.classificationId : classificationId // ignore: cast_nullable_to_non_nullable
as String?,moquiSessionToken: freezed == moquiSessionToken ? _self.moquiSessionToken : moquiSessionToken // ignore: cast_nullable_to_non_nullable
as String?,ownerPartyId: freezed == ownerPartyId ? _self.ownerPartyId : ownerPartyId // ignore: cast_nullable_to_non_nullable
as String?,companyUser: freezed == companyUser ? _self.companyUser : companyUser // ignore: cast_nullable_to_non_nullable
as CompanyUser?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as Stats?,
  ));
}

/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyUserCopyWith<$Res>? get companyUser {
    if (_self.companyUser == null) {
    return null;
  }

  return $CompanyUserCopyWith<$Res>(_self.companyUser!, (value) {
    return _then(_self.copyWith(companyUser: value));
  });
}/// Create a copy of Authenticate
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
}/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Authenticate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsCopyWith<$Res>? get stats {
    if (_self.stats == null) {
    return null;
  }

  return $StatsCopyWith<$Res>(_self.stats!, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}

// dart format on
