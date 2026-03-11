// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => _ChatMessage(
  chatRoom: json['chatRoom'] == null
      ? null
      : ChatRoom.fromJson(json['chatRoom'] as Map<String, dynamic>),
  fromUserId: json['fromUserId'] as String?,
  fromUserFullName: json['fromUserFullName'] as String?,
  chatMessageId: json['chatMessageId'] as String?,
  content: json['content'] as String?,
  creationDate: const DateTimeConverter().fromJson(
    json['creationDate'] as String?,
  ),
);

Map<String, dynamic> _$ChatMessageToJson(_ChatMessage instance) =>
    <String, dynamic>{
      'chatRoom': instance.chatRoom,
      'fromUserId': instance.fromUserId,
      'fromUserFullName': instance.fromUserFullName,
      'chatMessageId': instance.chatMessageId,
      'content': instance.content,
      'creationDate': const DateTimeConverter().toJson(instance.creationDate),
    };

_ChatMessages _$ChatMessagesFromJson(Map<String, dynamic> json) =>
    _ChatMessages(
      chatMessages:
          (json['chatMessages'] as List<dynamic>?)
              ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ChatMessagesToJson(_ChatMessages instance) =>
    <String, dynamic>{'chatMessages': instance.chatMessages};
