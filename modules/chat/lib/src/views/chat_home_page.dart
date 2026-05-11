import 'dart:convert';

import 'package:auth/auth.dart';
import 'package:chat/src/widgets/chat_message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Chat home screen with demo messages
class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key});

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  final TextEditingController _messageController = TextEditingController();

  final ScrollController _scrollController = ScrollController();

  final List<Message> _messages = [];

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _sendMessage() async {
    final text = _messageController.text.trim();

    if (text.isEmpty) return;

    final userMessage = Message(text: text, isFromCurrentUser: true);

    setState(() {
      _messages.add(userMessage);
    });

    _messageController.clear();

    await _saveMessages();
    _scrollToBottom();

    // Small delay to simulate bot typing
    await Future.delayed(const Duration(seconds: 1));

    final responseText = await generateAutoResponse();

    if (!mounted) return;

    final botMessage = Message(text: responseText, isFromCurrentUser: false);

    setState(() {
      _messages.add(botMessage);
    });

    await _saveMessages();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    if (!_scrollController.hasClients) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  Future<void> _loadMessages() async {
    final prefs = await SharedPreferences.getInstance();

    final messagesJson = prefs.getStringList('chat_messages') ?? [];

    final loadedMessages = messagesJson
        .map((json) => Message.fromJson(json))
        .toList();

    if (!mounted) return;

    setState(() {
      _messages
        ..clear()
        ..addAll(loadedMessages);
    });

    _scrollToBottom();
  }

  Future<void> _saveMessages() async {
    final prefs = await SharedPreferences.getInstance();

    final messagesJson = _messages.map((msg) => msg.toJson()).toList();

    await prefs.setStringList('chat_messages', messagesJson);
  }

  void _onResultTap(int index) {
    debugPrint('Result tapped for message: ${_messages[index].text}');
  }

  void _onStopTap(int index) {
    debugPrint('Stop tapped for message: ${_messages[index].text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthBloc>().add(AuthLoggedOut());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];

                return Container(
                  alignment: message.isFromCurrentUser
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: ChatMessageBubble(
                    message: message.text,
                    isMe: message.isFromCurrentUser,
                    time: message.time,
                    onResultTap: () => _onResultTap(index),
                    onStopTap: () => _onStopTap(index),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Message',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: _sendMessage,
                  icon: const Icon(Icons.send),
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  final String text;
  final bool isFromCurrentUser;
  final DateTime time;

  Message({required this.text, required this.isFromCurrentUser, DateTime? time})
    : time = time ?? DateTime.now();

  String toJson() {
    final map = {
      'text': text,
      'isFromCurrentUser': isFromCurrentUser,
      'time': time.millisecondsSinceEpoch,
    };

    return jsonEncode(map);
  }

  factory Message.fromJson(String jsonString) {
    final Map<String, dynamic> map = jsonDecode(jsonString);

    return Message(
      text: map['text'] as String,
      isFromCurrentUser: map['isFromCurrentUser'] as bool,
      time: DateTime.fromMillisecondsSinceEpoch(map['time'] as int),
    );
  }
}

Future<String> generateAutoResponse() async {
  return lorem(paragraphs: 1, words: 10);
}
