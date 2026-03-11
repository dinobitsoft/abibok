part of 'chat_message_bloc.dart';

abstract class ChatMessageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChatMessageFetch extends ChatMessageEvent {
  final String chatRoomId;
  final String chatRoomName;
  final bool refresh;
  final int limit;
  final String searchString;
  ChatMessageFetch(
      {required this.chatRoomId,
      required this.chatRoomName,
      this.refresh = false,
      this.limit = 20,
      this.searchString = ''});
  @override
  String toString() =>
      "ChatMessageFetch refresh: $refresh limit: $limit, search: $searchString";
}

class ChatMessageReceiveWs extends ChatMessageEvent {
  final ChatMessage chatMessage;
  ChatMessageReceiveWs(this.chatMessage);
  @override
  String toString() =>
      "ReceiveWsChatMessage receive wsChat message: $chatMessage";
}

class ChatMessageSendWs extends ChatMessageEvent {
  final ChatMessage chatMessage;
  ChatMessageSendWs(this.chatMessage);
  @override
  String toString() => "SendWsChatMessage send wsChat message: $chatMessage";
}
