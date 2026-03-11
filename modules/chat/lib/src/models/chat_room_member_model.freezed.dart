// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRoomMember {

 User? get user; bool? get hasRead; bool? get isActive;
/// Create a copy of ChatRoomMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomMemberCopyWith<ChatRoomMember> get copyWith => _$ChatRoomMemberCopyWithImpl<ChatRoomMember>(this as ChatRoomMember, _$identity);

  /// Serializes this ChatRoomMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomMember&&(identical(other.user, user) || other.user == user)&&(identical(other.hasRead, hasRead) || other.hasRead == hasRead)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,hasRead,isActive);



}

/// @nodoc
abstract mixin class $ChatRoomMemberCopyWith<$Res>  {
  factory $ChatRoomMemberCopyWith(ChatRoomMember value, $Res Function(ChatRoomMember) _then) = _$ChatRoomMemberCopyWithImpl;
@useResult
$Res call({
 User? user, bool? hasRead, bool? isActive
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$ChatRoomMemberCopyWithImpl<$Res>
    implements $ChatRoomMemberCopyWith<$Res> {
  _$ChatRoomMemberCopyWithImpl(this._self, this._then);

  final ChatRoomMember _self;
  final $Res Function(ChatRoomMember) _then;

/// Create a copy of ChatRoomMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? hasRead = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,hasRead: freezed == hasRead ? _self.hasRead : hasRead // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ChatRoomMember
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
}
}


/// Adds pattern-matching-related methods to [ChatRoomMember].
extension ChatRoomMemberPatterns on ChatRoomMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoomMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoomMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoomMember value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoomMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoomMember value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoomMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? user,  bool? hasRead,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoomMember() when $default != null:
return $default(_that.user,_that.hasRead,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? user,  bool? hasRead,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _ChatRoomMember():
return $default(_that.user,_that.hasRead,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? user,  bool? hasRead,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoomMember() when $default != null:
return $default(_that.user,_that.hasRead,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoomMember extends ChatRoomMember {
   _ChatRoomMember({this.user, this.hasRead, this.isActive}): super._();
  factory _ChatRoomMember.fromJson(Map<String, dynamic> json) => _$ChatRoomMemberFromJson(json);

@override final  User? user;
@override final  bool? hasRead;
@override final  bool? isActive;

/// Create a copy of ChatRoomMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomMemberCopyWith<_ChatRoomMember> get copyWith => __$ChatRoomMemberCopyWithImpl<_ChatRoomMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoomMember&&(identical(other.user, user) || other.user == user)&&(identical(other.hasRead, hasRead) || other.hasRead == hasRead)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,hasRead,isActive);



}

/// @nodoc
abstract mixin class _$ChatRoomMemberCopyWith<$Res> implements $ChatRoomMemberCopyWith<$Res> {
  factory _$ChatRoomMemberCopyWith(_ChatRoomMember value, $Res Function(_ChatRoomMember) _then) = __$ChatRoomMemberCopyWithImpl;
@override @useResult
$Res call({
 User? user, bool? hasRead, bool? isActive
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$ChatRoomMemberCopyWithImpl<$Res>
    implements _$ChatRoomMemberCopyWith<$Res> {
  __$ChatRoomMemberCopyWithImpl(this._self, this._then);

  final _ChatRoomMember _self;
  final $Res Function(_ChatRoomMember) _then;

/// Create a copy of ChatRoomMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? hasRead = freezed,Object? isActive = freezed,}) {
  return _then(_ChatRoomMember(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,hasRead: freezed == hasRead ? _self.hasRead : hasRead // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ChatRoomMember
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
}
}

// dart format on
