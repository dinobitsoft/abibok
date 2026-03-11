part of 'chat_room_bloc.dart';

enum ChatRoomStatus { initial, loading, success, failure }

class ChatRoomState extends Equatable {
  const ChatRoomState({
    this.status = ChatRoomStatus.initial,
    this.chatRooms = const <ChatRoom>[],
    this.message,
    this.hasReachedMax = false,
    this.searchString = '',
    this.search = false,
  });

  final ChatRoomStatus status;
  final String? message;
  final List<ChatRoom> chatRooms;
  final bool hasReachedMax;
  final String searchString;
  final bool search;

  ChatRoomState copyWith({
    ChatRoomStatus? status,
    String? message,
    List<ChatRoom>? chatRooms,
    bool? hasReachedMax,
    String? searchString,
    bool? search,
  }) {
    return ChatRoomState(
      status: status ?? this.status,
      chatRooms: chatRooms ?? this.chatRooms,
      message: message,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      searchString: searchString ?? this.searchString,
      search: search ?? this.search,
    );
  }

  @override
  List<Object?> get props =>
      [chatRooms, hasReachedMax, status, search, message];

  @override
  String toString() => '$status { #chatRooms: ${chatRooms.length}, '
      'hasReachedMax: $hasReachedMax message $message}';
}
