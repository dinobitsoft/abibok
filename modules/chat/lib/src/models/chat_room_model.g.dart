// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) => _ChatRoom(
  chatRoomId: json['chatRoomId'] as String? ?? "",
  chatRoomName: json['chatRoomName'] as String?,
  lastMessage: json['lastMessage'] as String?,
  isPrivate: json['isPrivate'] as bool? ?? true,
  hasRead: json['hasRead'] as bool? ?? true,
  members:
      (json['members'] as List<dynamic>?)
          ?.map((e) => ChatRoomMember.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ChatRoomToJson(_ChatRoom instance) => <String, dynamic>{
  'chatRoomId': instance.chatRoomId,
  'chatRoomName': instance.chatRoomName,
  'lastMessage': instance.lastMessage,
  'isPrivate': instance.isPrivate,
  'hasRead': instance.hasRead,
  'members': instance.members,
};

_ChatRooms _$ChatRoomsFromJson(Map<String, dynamic> json) => _ChatRooms(
  chatRooms:
      (json['chatRooms'] as List<dynamic>?)
          ?.map((e) => ChatRoom.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ChatRoomsToJson(_ChatRooms instance) =>
    <String, dynamic>{'chatRooms': instance.chatRooms};
