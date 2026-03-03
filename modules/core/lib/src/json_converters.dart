import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    try {
      // Parse the timestamp and ensure it's treated as UTC from server
      DateTime? parsed = DateTime.tryParse(json);
      if (parsed != null) {
        // If the parsed datetime doesn't have timezone info, treat it as UTC
        if (!json.contains('Z') &&
            !json.contains('+') &&
            !json.contains('-', 10)) {
          // Assume server time is UTC and convert to local
          return DateTime.parse('${json}Z').toLocal();
        }
        return parsed.toLocal(); // Convert to local time for display
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    // Always send to server in UTC to avoid timezone issues
    // Include timezone information in the format
    return object.toUtc().toIso8601String();
  }
}


