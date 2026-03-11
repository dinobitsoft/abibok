// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomMember _$ChatRoomMemberFromJson(Map<String, dynamic> json) =>
    _ChatRoomMember(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      hasRead: json['hasRead'] as bool?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$ChatRoomMemberToJson(_ChatRoomMember instance) =>
    <String, dynamic>{
      'user': instance.user,
      'hasRead': instance.hasRead,
      'isActive': instance.isActive,
    };
