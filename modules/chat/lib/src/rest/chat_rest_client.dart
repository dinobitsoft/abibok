import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../models/models.dart';

part 'chat_rest_client.g.dart';

@RestApi(baseUrl: null)
abstract class ChatRestClient {
  factory ChatRestClient(Dio dio, {String baseUrl}) = _ChatRestClient;

  // chat
  @GET("rest/s1/abibok/100/ChatRoom")
  Future<ChatRooms> getChatRooms({
    @Query('hasRead') bool? hasRead, // return rooms with unread messages
    @Query('userId') String? userId,
    @Query('chatRoomName') String? chatRoomName,
    @Query('chatRoomId') String? chatRoomId,
    @Query('start') int? start,
    @Query('limit') int? limit,
    @Query('isPrivate') bool? isPrivate,
    @Query('search') String? searchString,
    @Query('filter') String? filter,
  });

  @POST("rest/s1/abibok/100/ChatRoom")
  Future<ChatRoom> createChatRoom({@Field() required ChatRoom chatRoom});

  @PATCH("rest/s1/abibok/100/ChatRoom")
  Future<ChatRoom> updateChatRoom({@Field() required ChatRoom chatRoom});

  @DELETE("rest/s1/abibok/100/ChatRoom")
  Future<ChatRoom> deleteChatRoom({@Field() required String chatRoomId});

  @GET("rest/s1/abibok/100/ChatMessage")
  Future<ChatMessages> getChatMessages({
    @Query('chatRoomId') String? chatRoomId,
    @Query('start') int? start,
    @Query('limit') int? limit,
    @Query('search') String? searchString,
  });

  @POST("rest/s1/abibok/100/ChatMessage")
  Future<ChatMessage> createChatMessage({
    @Field() required ChatMessage chatMessage,
  });

}
