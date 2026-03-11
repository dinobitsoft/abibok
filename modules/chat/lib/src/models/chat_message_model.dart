import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat_room_model.dart';
import 'json_converters.dart' show DateTimeConverter;

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
abstract class ChatMessage with _$ChatMessage {
  ChatMessage._();
  factory ChatMessage({
    ChatRoom? chatRoom,
    String? fromUserId,
    String? fromUserFullName,
    String? chatMessageId,
    String? content,
    @DateTimeConverter() DateTime? creationDate,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json['chatMessage'] ?? json);
}

@freezed
abstract class ChatMessages with _$ChatMessages {
  factory ChatMessages({@Default([]) List<ChatMessage> chatMessages}) =
      _ChatMessages;
  ChatMessages._();

  factory ChatMessages.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesFromJson(json);
}
