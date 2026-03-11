part of 'chat_room_bloc.dart';

abstract class ChatRoomEvent extends Equatable {
  const ChatRoomEvent();
  @override
  List<Object> get props => [];
}

class ChatRoomUpdateLocal extends ChatRoomEvent {
  final ChatRoom? chatRoom;
  final String? addNotReadChatRoomId;
  final String? delNotReadChatRoomId;
  const ChatRoomUpdateLocal({
    this.chatRoom,
    this.addNotReadChatRoomId,
    this.delNotReadChatRoomId,
  });

  @override
  String toString() => addNotReadChatRoomId != null
      ? "ChatRoomUpdateLocal: add local add room: $addNotReadChatRoomId"
      : "ChatRoomUpdateLocal: delete local add room: $delNotReadChatRoomId";
}

class ChatRoomFetch extends ChatRoomEvent {
  final bool refresh;
  final int limit;
  final String searchString;
  const ChatRoomFetch({
    this.refresh = false,
    this.limit = 20,
    this.searchString = '',
  });
  @override
  String toString() =>
      "FetchChatRoom refresh: $refresh limit: $limit, search: $searchString";
}

class ChatRoomUpdate extends ChatRoomEvent {
  final ChatRoom chatRoom;
  const ChatRoomUpdate(this.chatRoom);
  @override
  String toString() =>
      "${chatRoom.chatRoomId.isEmpty ? 'Add' : 'Update'}"
      "Room: $chatRoom Members: ${chatRoom.members}";
}

class ChatRoomDelete extends ChatRoomEvent {
  final ChatRoom chatRoom;
  const ChatRoomDelete(this.chatRoom);
  @override
  String toString() => "Delete Room: $chatRoom Members: ${chatRoom.members}";
}

class ChatRoomReceiveWsChatMessage extends ChatRoomEvent {
  final ChatMessage chatMessage;
  const ChatRoomReceiveWsChatMessage(this.chatMessage);
  @override
  String toString() =>
      "Receive chat server message in ChatRoombloc ${chatMessage.content} "
      "chatroom: ${chatMessage.chatRoom?.chatRoomId} from: ${chatMessage.fromUserId} ";
}
