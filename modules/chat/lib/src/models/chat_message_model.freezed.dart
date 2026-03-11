// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessage {

 ChatRoom? get chatRoom; String? get fromUserId; String? get fromUserFullName; String? get chatMessageId; String? get content;@DateTimeConverter() DateTime? get creationDate;
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<ChatMessage> get copyWith => _$ChatMessageCopyWithImpl<ChatMessage>(this as ChatMessage, _$identity);

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage&&(identical(other.chatRoom, chatRoom) || other.chatRoom == chatRoom)&&(identical(other.fromUserId, fromUserId) || other.fromUserId == fromUserId)&&(identical(other.fromUserFullName, fromUserFullName) || other.fromUserFullName == fromUserFullName)&&(identical(other.chatMessageId, chatMessageId) || other.chatMessageId == chatMessageId)&&(identical(other.content, content) || other.content == content)&&(identical(other.creationDate, creationDate) || other.creationDate == creationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatRoom,fromUserId,fromUserFullName,chatMessageId,content,creationDate);

@override
String toString() {
  return 'ChatMessage(chatRoom: $chatRoom, fromUserId: $fromUserId, fromUserFullName: $fromUserFullName, chatMessageId: $chatMessageId, content: $content, creationDate: $creationDate)';
}


}

/// @nodoc
abstract mixin class $ChatMessageCopyWith<$Res>  {
  factory $ChatMessageCopyWith(ChatMessage value, $Res Function(ChatMessage) _then) = _$ChatMessageCopyWithImpl;
@useResult
$Res call({
 ChatRoom? chatRoom, String? fromUserId, String? fromUserFullName, String? chatMessageId, String? content,@DateTimeConverter() DateTime? creationDate
});


$ChatRoomCopyWith<$Res>? get chatRoom;

}
/// @nodoc
class _$ChatMessageCopyWithImpl<$Res>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._self, this._then);

  final ChatMessage _self;
  final $Res Function(ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatRoom = freezed,Object? fromUserId = freezed,Object? fromUserFullName = freezed,Object? chatMessageId = freezed,Object? content = freezed,Object? creationDate = freezed,}) {
  return _then(_self.copyWith(
chatRoom: freezed == chatRoom ? _self.chatRoom : chatRoom // ignore: cast_nullable_to_non_nullable
as ChatRoom?,fromUserId: freezed == fromUserId ? _self.fromUserId : fromUserId // ignore: cast_nullable_to_non_nullable
as String?,fromUserFullName: freezed == fromUserFullName ? _self.fromUserFullName : fromUserFullName // ignore: cast_nullable_to_non_nullable
as String?,chatMessageId: freezed == chatMessageId ? _self.chatMessageId : chatMessageId // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,creationDate: freezed == creationDate ? _self.creationDate : creationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatRoomCopyWith<$Res>? get chatRoom {
    if (_self.chatRoom == null) {
    return null;
  }

  return $ChatRoomCopyWith<$Res>(_self.chatRoom!, (value) {
    return _then(_self.copyWith(chatRoom: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessage].
extension ChatMessagePatterns on ChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChatRoom? chatRoom,  String? fromUserId,  String? fromUserFullName,  String? chatMessageId,  String? content, @DateTimeConverter()  DateTime? creationDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.chatRoom,_that.fromUserId,_that.fromUserFullName,_that.chatMessageId,_that.content,_that.creationDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChatRoom? chatRoom,  String? fromUserId,  String? fromUserFullName,  String? chatMessageId,  String? content, @DateTimeConverter()  DateTime? creationDate)  $default,) {final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that.chatRoom,_that.fromUserId,_that.fromUserFullName,_that.chatMessageId,_that.content,_that.creationDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChatRoom? chatRoom,  String? fromUserId,  String? fromUserFullName,  String? chatMessageId,  String? content, @DateTimeConverter()  DateTime? creationDate)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.chatRoom,_that.fromUserId,_that.fromUserFullName,_that.chatMessageId,_that.content,_that.creationDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessage extends ChatMessage {
   _ChatMessage({this.chatRoom, this.fromUserId, this.fromUserFullName, this.chatMessageId, this.content, @DateTimeConverter() this.creationDate}): super._();
  factory _ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

@override final  ChatRoom? chatRoom;
@override final  String? fromUserId;
@override final  String? fromUserFullName;
@override final  String? chatMessageId;
@override final  String? content;
@override@DateTimeConverter() final  DateTime? creationDate;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageCopyWith<_ChatMessage> get copyWith => __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessage&&(identical(other.chatRoom, chatRoom) || other.chatRoom == chatRoom)&&(identical(other.fromUserId, fromUserId) || other.fromUserId == fromUserId)&&(identical(other.fromUserFullName, fromUserFullName) || other.fromUserFullName == fromUserFullName)&&(identical(other.chatMessageId, chatMessageId) || other.chatMessageId == chatMessageId)&&(identical(other.content, content) || other.content == content)&&(identical(other.creationDate, creationDate) || other.creationDate == creationDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatRoom,fromUserId,fromUserFullName,chatMessageId,content,creationDate);

@override
String toString() {
  return 'ChatMessage(chatRoom: $chatRoom, fromUserId: $fromUserId, fromUserFullName: $fromUserFullName, chatMessageId: $chatMessageId, content: $content, creationDate: $creationDate)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(_ChatMessage value, $Res Function(_ChatMessage) _then) = __$ChatMessageCopyWithImpl;
@override @useResult
$Res call({
 ChatRoom? chatRoom, String? fromUserId, String? fromUserFullName, String? chatMessageId, String? content,@DateTimeConverter() DateTime? creationDate
});


@override $ChatRoomCopyWith<$Res>? get chatRoom;

}
/// @nodoc
class __$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(this._self, this._then);

  final _ChatMessage _self;
  final $Res Function(_ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatRoom = freezed,Object? fromUserId = freezed,Object? fromUserFullName = freezed,Object? chatMessageId = freezed,Object? content = freezed,Object? creationDate = freezed,}) {
  return _then(_ChatMessage(
chatRoom: freezed == chatRoom ? _self.chatRoom : chatRoom // ignore: cast_nullable_to_non_nullable
as ChatRoom?,fromUserId: freezed == fromUserId ? _self.fromUserId : fromUserId // ignore: cast_nullable_to_non_nullable
as String?,fromUserFullName: freezed == fromUserFullName ? _self.fromUserFullName : fromUserFullName // ignore: cast_nullable_to_non_nullable
as String?,chatMessageId: freezed == chatMessageId ? _self.chatMessageId : chatMessageId // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,creationDate: freezed == creationDate ? _self.creationDate : creationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatRoomCopyWith<$Res>? get chatRoom {
    if (_self.chatRoom == null) {
    return null;
  }

  return $ChatRoomCopyWith<$Res>(_self.chatRoom!, (value) {
    return _then(_self.copyWith(chatRoom: value));
  });
}
}


/// @nodoc
mixin _$ChatMessages {

 List<ChatMessage> get chatMessages;
/// Create a copy of ChatMessages
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagesCopyWith<ChatMessages> get copyWith => _$ChatMessagesCopyWithImpl<ChatMessages>(this as ChatMessages, _$identity);

  /// Serializes this ChatMessages to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessages&&const DeepCollectionEquality().equals(other.chatMessages, chatMessages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(chatMessages));

@override
String toString() {
  return 'ChatMessages(chatMessages: $chatMessages)';
}


}

/// @nodoc
abstract mixin class $ChatMessagesCopyWith<$Res>  {
  factory $ChatMessagesCopyWith(ChatMessages value, $Res Function(ChatMessages) _then) = _$ChatMessagesCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> chatMessages
});




}
/// @nodoc
class _$ChatMessagesCopyWithImpl<$Res>
    implements $ChatMessagesCopyWith<$Res> {
  _$ChatMessagesCopyWithImpl(this._self, this._then);

  final ChatMessages _self;
  final $Res Function(ChatMessages) _then;

/// Create a copy of ChatMessages
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatMessages = null,}) {
  return _then(_self.copyWith(
chatMessages: null == chatMessages ? _self.chatMessages : chatMessages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessages].
extension ChatMessagesPatterns on ChatMessages {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessages value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessages() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessages value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessages():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessages value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessages() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessage> chatMessages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessages() when $default != null:
return $default(_that.chatMessages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessage> chatMessages)  $default,) {final _that = this;
switch (_that) {
case _ChatMessages():
return $default(_that.chatMessages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessage> chatMessages)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessages() when $default != null:
return $default(_that.chatMessages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessages extends ChatMessages {
   _ChatMessages({final  List<ChatMessage> chatMessages = const []}): _chatMessages = chatMessages,super._();
  factory _ChatMessages.fromJson(Map<String, dynamic> json) => _$ChatMessagesFromJson(json);

 final  List<ChatMessage> _chatMessages;
@override@JsonKey() List<ChatMessage> get chatMessages {
  if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chatMessages);
}


/// Create a copy of ChatMessages
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagesCopyWith<_ChatMessages> get copyWith => __$ChatMessagesCopyWithImpl<_ChatMessages>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessagesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessages&&const DeepCollectionEquality().equals(other._chatMessages, _chatMessages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chatMessages));

@override
String toString() {
  return 'ChatMessages(chatMessages: $chatMessages)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagesCopyWith<$Res> implements $ChatMessagesCopyWith<$Res> {
  factory _$ChatMessagesCopyWith(_ChatMessages value, $Res Function(_ChatMessages) _then) = __$ChatMessagesCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessage> chatMessages
});




}
/// @nodoc
class __$ChatMessagesCopyWithImpl<$Res>
    implements _$ChatMessagesCopyWith<$Res> {
  __$ChatMessagesCopyWithImpl(this._self, this._then);

  final _ChatMessages _self;
  final $Res Function(_ChatMessages) _then;

/// Create a copy of ChatMessages
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatMessages = null,}) {
  return _then(_ChatMessages(
chatMessages: null == chatMessages ? _self._chatMessages : chatMessages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

// dart format on
