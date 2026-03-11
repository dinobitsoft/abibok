part of 'chat_message_bloc.dart';

enum ChatMessageStatus { initial, success, failure }

class ChatMessageState extends Equatable {
  const ChatMessageState({
    this.status = ChatMessageStatus.initial,
    this.chatMessages = const <ChatMessage>[],
    this.message,
    this.hasReachedMax = false,
    this.searchString = '',
    this.search = false,
  });

  final ChatMessageStatus status;
  final String? message;
  final List<ChatMessage> chatMessages;
  final bool hasReachedMax;
  final String searchString;
  final bool search;

  ChatMessageState copyWith({
    ChatMessageStatus? status,
    String? message,
    List<ChatMessage>? chatMessages,
    bool error = false,
    bool? hasReachedMax,
    String? searchString,
    bool? search,
  }) {
    return ChatMessageState(
      status: status ?? this.status,
      chatMessages: chatMessages ?? this.chatMessages,
      message: message,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      searchString: searchString ?? this.searchString,
      search: search ?? this.search,
    );
  }

  @override
  List<Object?> get props => [chatMessages, hasReachedMax, search, message];

  @override
  String toString() => '$status { #chatMessages: ${chatMessages.length}, '
      'hasReachedMax: $hasReachedMax message $message}';
}
