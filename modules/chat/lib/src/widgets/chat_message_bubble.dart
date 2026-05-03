import 'package:flutter/material.dart';

class ChatMessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final DateTime time;
  final VoidCallback? onResultTap;
  final VoidCallback? onStopTap;

  const ChatMessageBubble({
    super.key,
    required this.message,
    required this.isMe,
    required this.time,
    this.onResultTap,
    this.onStopTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Stack(
        children: [
          // Основной контейнер сообщения
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            decoration: BoxDecoration(
              color: isMe ? Colors.green[100] : Colors.blue[100],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft: isMe ? const Radius.circular(16) : Radius.zero,
                bottomRight: isMe ? Radius.zero : const Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        message,
                        style: TextStyle(
                          color: isMe ? Colors.black : Colors.black,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Icon(Icons.stop, color: Colors.white, size: 16),
                      ),
                      onPressed: onStopTap,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
                  style: TextStyle(
                    fontSize: 10,
                    color: isMe ? Colors.black54 : Colors.black54,
                  ),
                ),
                if (onResultTap != null) ...[
                  TextButton(
                    onPressed: onResultTap,
                    child: const Text('Результат'),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
