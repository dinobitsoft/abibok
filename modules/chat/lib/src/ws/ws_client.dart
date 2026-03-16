import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:logger/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'dart:io' show Platform;

import '../models/models.dart';

class WsClient {
  late WebSocketChannel channel;
  late String wsUrl;
  final StreamController streamController = StreamController.broadcast();

  var logger = Logger(
    filter: null, // Use the default LogFilter (-> only log in debug mode)
    printer: PrettyPrinter(
      lineLength: 133,
      methodCount: 0,
    ), // Use the PrettyPrinter to format and print log
    output: null, // Use the default LogOutput (-> send everything to console)
  );

  WsClient(String path) {
    if (kReleaseMode) {
      wsUrl = GlobalConfiguration().get("chatUrl") ?? '';
    } else {
      wsUrl = GlobalConfiguration().get("chatUrlDebug") ?? '';
      if (wsUrl.isEmpty) {
        if (kIsWeb || Platform.isIOS || Platform.isMacOS || Platform.isLinux) {
          wsUrl = 'ws://localhost:8080/$path';
        } else if (Platform.isAndroid) {
          wsUrl = 'ws://10.0.2.2:8080/$path';
        }
      }
    }
    logger.i('Using base websocket backend url: $wsUrl with path: $path');
  }

  Future<void> connect(String apiKey, String userId) async {
    try {
      logger.i("WS connect $wsUrl");
      channel = WebSocketChannel.connect(
        Uri.parse("$wsUrl?apiKey=$apiKey&userId=$userId"),
      );
      channel.stream.listen((data) {
        streamController.add(data);
      });

      //await channel.ready;
    } catch (error) {
      if (error is WebSocketChannelException) {
        if (error.inner != null) {
          final err = error.inner as dynamic;
          logger.e('Websocket inner error: ${err.message.toString()}');
        }
        logger.e('Websocket error: ${error.message}');
      }
    }
  }

  void send(Object message) {
    String out;
    debugPrint("Send message: $message");
    if (message is ChatMessage) {
      const JsonEncoder encoder = JsonEncoder();
      out = encoder.convert(message.toJson());
    } else {
      out = message as String;
    }
    channel.sink.add(out);
  }

  Stream<dynamic> stream() {
    return streamController.stream;
  }

  void close() {
    try {
      channel.sink.close(status.normalClosure);
    } catch (_) {}

    if (!streamController.isClosed) {
      streamController.close();
    }
  }
}
