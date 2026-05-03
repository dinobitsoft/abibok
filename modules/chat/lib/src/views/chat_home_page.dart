import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auth/auth.dart';
import 'package:chat/src/widgets/chat_message_bubble.dart'; // Импорт нового виджета
import 'package:flutter_lorem/flutter_lorem.dart';

/// Главный экран чата с демо-сообщениями
class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key});

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  final _messageController = TextEditingController();
  final List<_DemoChatMessage> _messages = [];

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(
          _DemoChatMessage(text: text, isMe: true, time: DateTime.now()),
        );

        // Генерация ответа с использованием lorem
        Future.delayed(const Duration(seconds: 1), () {
          if (mounted) {
            setState(() {
              // Генерируем случайный текст с помощью flutter_lorem
              String loremResponse = lorem(paragraphs: 1, words: 10);
              _messages.add(
                _DemoChatMessage(
                  text: loremResponse,
                  isMe: false,
                  time: DateTime.now(),
                ),
              );
            });
          }
        });

        _messageController.clear();
      });
    }
  }

  void _onResultTap(int index) {
    print('Результат нажат для сообщения ${_messages[index].text}');
  }

  void _onStopTap(int index) {
    print('Стоп нажат для сообщения ${_messages[index].text}');
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
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Container(
                  alignment: message.isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: ChatMessageBubble(
                    message: message.text,
                    isMe: message.isMe,
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

class _DemoChatMessage {
  final String text;
  final bool isMe;
  final DateTime time;

  _DemoChatMessage({
    required this.text,
    required this.isMe,
    required this.time,
  });
}
