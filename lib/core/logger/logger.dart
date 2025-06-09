import 'dart:developer' as developer;

abstract class Logger {
  static void log(String message, {String tag = 'Default'}) {
    developer.log(message, name: tag);
  }
}

enum LogTags {
  connectionListener('Network connection listener'),
  ;

  const LogTags(this.tag);
  final String tag;
}
