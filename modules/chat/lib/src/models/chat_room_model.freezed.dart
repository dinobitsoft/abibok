// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatRoom {

 String get chatRoomId;/// will be filled with the 'other' users name when oneToOne chat,
/// when multiperson room will have the name of the room
 String? get chatRoomName;/// to easily show last message in list show last message here
 String? get lastMessage; bool get isPrivate;/// if all messages were read
 bool get hasRead;/// list of members in the chat room
 List<ChatRoomMember> get members;
/// Create a copy of ChatRoom
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomCopyWith<ChatRoom> get copyWith => _$ChatRoomCopyWithImpl<ChatRoom>(this as ChatRoom, _$identity);

  /// Serializes this ChatRoom to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoom&&(identical(other.chatRoomId, chatRoomId) || other.chatRoomId == chatRoomId)&&(identical(other.chatRoomName, chatRoomName) || other.chatRoomName == chatRoomName)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.hasRead, hasRead) || other.hasRead == hasRead)&&const DeepCollectionEquality().equals(other.members, members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatRoomId,chatRoomName,lastMessage,isPrivate,hasRead,const DeepCollectionEquality().hash(members));



}

/// @nodoc
abstract mixin class $ChatRoomCopyWith<$Res>  {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) _then) = _$ChatRoomCopyWithImpl;
@useResult
$Res call({
 String chatRoomId, String? chatRoomName, String? lastMessage, bool isPrivate, bool hasRead, List<ChatRoomMember> members
});




}
/// @nodoc
class _$ChatRoomCopyWithImpl<$Res>
    implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._self, this._then);

  final ChatRoom _self;
  final $Res Function(ChatRoom) _then;

/// Create a copy of ChatRoom
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatRoomId = null,Object? chatRoomName = freezed,Object? lastMessage = freezed,Object? isPrivate = null,Object? hasRead = null,Object? members = null,}) {
  return _then(_self.copyWith(
chatRoomId: null == chatRoomId ? _self.chatRoomId : chatRoomId // ignore: cast_nullable_to_non_nullable
as String,chatRoomName: freezed == chatRoomName ? _self.chatRoomName : chatRoomName // ignore: cast_nullable_to_non_nullable
as String?,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,hasRead: null == hasRead ? _self.hasRead : hasRead // ignore: cast_nullable_to_non_nullable
as bool,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<ChatRoomMember>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRoom].
extension ChatRoomPatterns on ChatRoom {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRoom value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRoom() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRoom value)  $default,){
final _that = this;
switch (_that) {
case _ChatRoom():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRoom value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRoom() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String chatRoomId,  String? chatRoomName,  String? lastMessage,  bool isPrivate,  bool hasRead,  List<ChatRoomMember> members)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRoom() when $default != null:
return $default(_that.chatRoomId,_that.chatRoomName,_that.lastMessage,_that.isPrivate,_that.hasRead,_that.members);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String chatRoomId,  String? chatRoomName,  String? lastMessage,  bool isPrivate,  bool hasRead,  List<ChatRoomMember> members)  $default,) {final _that = this;
switch (_that) {
case _ChatRoom():
return $default(_that.chatRoomId,_that.chatRoomName,_that.lastMessage,_that.isPrivate,_that.hasRead,_that.members);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String chatRoomId,  String? chatRoomName,  String? lastMessage,  bool isPrivate,  bool hasRead,  List<ChatRoomMember> members)?  $default,) {final _that = this;
switch (_that) {
case _ChatRoom() when $default != null:
return $default(_that.chatRoomId,_that.chatRoomName,_that.lastMessage,_that.isPrivate,_that.hasRead,_that.members);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRoom extends ChatRoom {
   _ChatRoom({this.chatRoomId = "", this.chatRoomName, this.lastMessage, this.isPrivate = true, this.hasRead = true, final  List<ChatRoomMember> members = const []}): _members = members,super._();
  factory _ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);

@override@JsonKey() final  String chatRoomId;
/// will be filled with the 'other' users name when oneToOne chat,
/// when multiperson room will have the name of the room
@override final  String? chatRoomName;
/// to easily show last message in list show last message here
@override final  String? lastMessage;
@override@JsonKey() final  bool isPrivate;
/// if all messages were read
@override@JsonKey() final  bool hasRead;
/// list of members in the chat room
 final  List<ChatRoomMember> _members;
/// list of members in the chat room
@override@JsonKey() List<ChatRoomMember> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}


/// Create a copy of ChatRoom
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomCopyWith<_ChatRoom> get copyWith => __$ChatRoomCopyWithImpl<_ChatRoom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRoom&&(identical(other.chatRoomId, chatRoomId) || other.chatRoomId == chatRoomId)&&(identical(other.chatRoomName, chatRoomName) || other.chatRoomName == chatRoomName)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.hasRead, hasRead) || other.hasRead == hasRead)&&const DeepCollectionEquality().equals(other._members, _members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatRoomId,chatRoomName,lastMessage,isPrivate,hasRead,const DeepCollectionEquality().hash(_members));



}

/// @nodoc
abstract mixin class _$ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$ChatRoomCopyWith(_ChatRoom value, $Res Function(_ChatRoom) _then) = __$ChatRoomCopyWithImpl;
@override @useResult
$Res call({
 String chatRoomId, String? chatRoomName, String? lastMessage, bool isPrivate, bool hasRead, List<ChatRoomMember> members
});




}
/// @nodoc
class __$ChatRoomCopyWithImpl<$Res>
    implements _$ChatRoomCopyWith<$Res> {
  __$ChatRoomCopyWithImpl(this._self, this._then);

  final _ChatRoom _self;
  final $Res Function(_ChatRoom) _then;

/// Create a copy of ChatRoom
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatRoomId = null,Object? chatRoomName = freezed,Object? lastMessage = freezed,Object? isPrivate = null,Object? hasRead = null,Object? members = null,}) {
  return _then(_ChatRoom(
chatRoomId: null == chatRoomId ? _self.chatRoomId : chatRoomId // ignore: cast_nullable_to_non_nullable
as String,chatRoomName: freezed == chatRoomName ? _self.chatRoomName : chatRoomName // ignore: cast_nullable_to_non_nullable
as String?,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,hasRead: null == hasRead ? _self.hasRead : hasRead // ignore: cast_nullable_to_non_nullable
as bool,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<ChatRoomMember>,
  ));
}


}


/// @nodoc
mixin _$ChatRooms {

 List<ChatRoom> get chatRooms;
/// Create a copy of ChatRooms
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomsCopyWith<ChatRooms> get copyWith => _$ChatRoomsCopyWithImpl<ChatRooms>(this as ChatRooms, _$identity);

  /// Serializes this ChatRooms to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRooms&&const DeepCollectionEquality().equals(other.chatRooms, chatRooms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chatRooms));

@override
String toString() {
  return 'ChatRooms(chatRooms: $chatRooms)';
}


}

/// @nodoc
abstract mixin class $ChatRoomsCopyWith<$Res>  {
  factory $ChatRoomsCopyWith(ChatRooms value, $Res Function(ChatRooms) _then) = _$ChatRoomsCopyWithImpl;
@useResult
$Res call({
 List<ChatRoom> chatRooms
});




}
/// @nodoc
class _$ChatRoomsCopyWithImpl<$Res>
    implements $ChatRoomsCopyWith<$Res> {
  _$ChatRoomsCopyWithImpl(this._self, this._then);

  final ChatRooms _self;
  final $Res Function(ChatRooms) _then;

/// Create a copy of ChatRooms
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatRooms = null,}) {
  return _then(_self.copyWith(
chatRooms: null == chatRooms ? _self.chatRooms : chatRooms // ignore: cast_nullable_to_non_nullable
as List<ChatRoom>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatRooms].
extension ChatRoomsPatterns on ChatRooms {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatRooms value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatRooms() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatRooms value)  $default,){
final _that = this;
switch (_that) {
case _ChatRooms():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatRooms value)?  $default,){
final _that = this;
switch (_that) {
case _ChatRooms() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatRoom> chatRooms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatRooms() when $default != null:
return $default(_that.chatRooms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatRoom> chatRooms)  $default,) {final _that = this;
switch (_that) {
case _ChatRooms():
return $default(_that.chatRooms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatRoom> chatRooms)?  $default,) {final _that = this;
switch (_that) {
case _ChatRooms() when $default != null:
return $default(_that.chatRooms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatRooms extends ChatRooms {
   _ChatRooms({final  List<ChatRoom> chatRooms = const []}): _chatRooms = chatRooms,super._();
  factory _ChatRooms.fromJson(Map<String, dynamic> json) => _$ChatRoomsFromJson(json);

 final  List<ChatRoom> _chatRooms;
@override@JsonKey() List<ChatRoom> get chatRooms {
  if (_chatRooms is EqualUnmodifiableListView) return _chatRooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatRooms);
}


/// Create a copy of ChatRooms
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatRoomsCopyWith<_ChatRooms> get copyWith => __$ChatRoomsCopyWithImpl<_ChatRooms>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatRoomsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatRooms&&const DeepCollectionEquality().equals(other._chatRooms, _chatRooms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chatRooms));

@override
String toString() {
  return 'ChatRooms(chatRooms: $chatRooms)';
}


}

/// @nodoc
abstract mixin class _$ChatRoomsCopyWith<$Res> implements $ChatRoomsCopyWith<$Res> {
  factory _$ChatRoomsCopyWith(_ChatRooms value, $Res Function(_ChatRooms) _then) = __$ChatRoomsCopyWithImpl;
@override @useResult
$Res call({
 List<ChatRoom> chatRooms
});




}
/// @nodoc
class __$ChatRoomsCopyWithImpl<$Res>
    implements _$ChatRoomsCopyWith<$Res> {
  __$ChatRoomsCopyWithImpl(this._self, this._then);

  final _ChatRooms _self;
  final $Res Function(_ChatRooms) _then;

/// Create a copy of ChatRooms
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatRooms = null,}) {
  return _then(_ChatRooms(
chatRooms: null == chatRooms ? _self._chatRooms : chatRooms // ignore: cast_nullable_to_non_nullable
as List<ChatRoom>,
  ));
}


}

// dart format on
