import 'package:auth/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room_member_model.freezed.dart';
part 'chat_room_member_model.g.dart';

@freezed
abstract class ChatRoomMember with _$ChatRoomMember {
  ChatRoomMember._();
  factory ChatRoomMember({User? user, bool? hasRead, bool? isActive}) =
      _ChatRoomMember;

  factory ChatRoomMember.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomMemberFromJson(json['chatRoomMember'] ?? json);

  @override
  String toString() =>
      'ChatRoom Member: ${user?.firstName} ${user?.lastName} '
      'userId: ${user?.userId} partyId: ${user?.partyId}';
}
