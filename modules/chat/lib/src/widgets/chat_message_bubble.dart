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
    final bgColor = isMe ? Colors.lightGreen[100] : Colors.lightBlue[100];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: Row(
        mainAxisAlignment: isMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 6),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft: isMe
                    ? const Radius.circular(16)
                    : const Radius.circular(4),
                bottomRight: isMe
                    ? const Radius.circular(4)
                    : const Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        message,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),

                    if (onStopTap != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 2),
                        child: GestureDetector(
                          onTap: onStopTap,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.stop,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),

                if (onResultTap != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: GestureDetector(
                      onTap: onResultTap,
                      child: const Text(
                        'Результат',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                    ),
                  ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      _formatTime(time),
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:'
        '${time.minute.toString().padLeft(2, '0')}';
  }
}
