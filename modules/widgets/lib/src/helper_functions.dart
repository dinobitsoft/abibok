import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:image/image.dart' as image;
import 'package:universal_io/io.dart';
import 'package:widgets/widgets.dart';

class HelperFunctions {
  static void showMessage(
    BuildContext context,
    String? message,
    dynamic colors, {
    int? seconds,
  }) {
    if (message != null && message != "null") {
      try {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(snackBar(context, colors, message, seconds: seconds));
      } catch (e) {
        // ScaffoldMessenger not available yet, ignore silently
        debugPrint('SnackBar not shown - no Scaffold available: $message');
      }
    }
  }

  static void showTopMessage(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          dismissDirection: DismissDirection.up,
          duration: duration ?? const Duration(milliseconds: 3000),
          backgroundColor: Colors.green[600],
          margin: EdgeInsets.only(
            top: 100,
            bottom: MediaQuery.of(context).size.height - 200,
            left: 20,
            right: 20,
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 4,
          content: Row(
            children: [
              const Icon(Icons.check_circle, color: Colors.white, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } catch (e) {
      // ScaffoldMessenger not available yet, ignore silently
      debugPrint('TopMessage not shown - no Scaffold available: $message');
    }
  }

  static Future<Uint8List?> getResizedImage(String? imagePath) async {
    if (imagePath != null) {
      const LoadingIndicator();
      Uint8List imageData;
      if (kIsWeb) {
        var response = await get(Uri.parse(imagePath));
        imageData = response.bodyBytes;
      } else {
        imageData = File(imagePath).readAsBytesSync();
      }
      if (imageData.length > 200000) {
        image.Image img = image.decodeImage(imageData)!;
        image.Image resized = image.copyResize(img, width: -1, height: 200);
        imageData = image.encodeJpg(resized);
      }
      return imageData;
    } else {
      return null;
    }
  }
}
