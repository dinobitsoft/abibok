import 'package:locale/locale.dart';

/// Translate ChatRoom BLoC message keys to localized strings
String translateChatRoomBlocMessage(
  String? messageKey,
  CoreLocalizations localizations,
) {
  if (messageKey == null || messageKey.isEmpty) return '';

  // Handle direct l10n keys (no parameters)
  if (messageKey == 'chatRoomUpdateSuccess') {
    return localizations.chatRoomUpdateSuccess;
  }
  if (messageKey == 'chatRoomAddSuccess') {
    return localizations.chatRoomAddSuccess;
  }

  // Fallback: return the key itself
  return messageKey;
}

/// Translate ChatMessage BLoC message keys to localized strings
String translateChatMessageBlocMessage(
  String? messageKey,
  CoreLocalizations _localizations,
) {
  if (messageKey == null || messageKey.isEmpty) return '';

  // Fallback: return the key itself
  return messageKey;
}
