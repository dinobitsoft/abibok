import 'package:auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'chat_room_model.freezed.dart';
part 'chat_room_model.g.dart';

@freezed
abstract class ChatRoom with _$ChatRoom {
  ChatRoom._();
  factory ChatRoom({
    @Default("") String chatRoomId,

    /// will be filled with the 'other' users name when oneToOne chat,
    /// when multiperson room will have the name of the room
    String? chatRoomName,

    /// to easily show last message in list show last message here
    String? lastMessage,
    @Default(true) bool isPrivate,

    /// if all messages were read
    @Default(true) bool hasRead,

    /// list of members in the chat room
    @Default([]) List<ChatRoomMember> members,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomFromJson(json["chatRoom"] ?? json);

  int getMemberIndex(String userId) {
    return members.indexWhere((element) => element.user?.userId == userId);
  }

  String? getToUserId(String currentUserId) {
    ChatRoomMember chatRoomMember = members.firstWhere(
      (element) => element.user?.userId != currentUserId,
      orElse: () => ChatRoomMember(),
    );
    return chatRoomMember.user?.userId;
  }

  String? getFromUserId(String currentUserId) {
    ChatRoomMember chatRoomMember = members.firstWhere(
      (element) => element.user?.userId == currentUserId,
    );
    return chatRoomMember.user?.userId;
  }

  ChatRoomMember? getFromMember(String currentUserId) {
    return members.firstWhere(
      (element) => element.user?.userId == currentUserId,
    );
  }

  int getUserIndex(User user) {
    late int index;
    for (index = 0; index < members.length; index++) {
      if (members[index].user?.userId == user.userId) break;
    }
    return index == members.length ? -1 : index;
  }

  @override
  String toString() => 'ChatRoom name: $chatRoomName[$chatRoomId]';
}

@freezed
abstract class ChatRooms with _$ChatRooms {
  factory ChatRooms({@Default([]) List<ChatRoom> chatRooms}) = _ChatRooms;
  ChatRooms._();

  factory ChatRooms.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsFromJson(json);
}
