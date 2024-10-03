import 'dart:developer' as developer;
import 'dart:io';

enum LogType { info, success, error }

class AppLogger {
  AppLogger._();

  /// Terminal color codes
  static const _reset = '\x1B[0m';
  static const _red = '\x1B[31m';
  static const _green = '\x1B[32m';
  static const _cyan = '\x1B[36m';

  static const Map<LogType, String> _logTypeColors = {
    LogType.info: _cyan,
    LogType.success: _green,
    LogType.error: _red,
  };

  static const Map<LogType, String> _logTypeIcons = {
    LogType.info: '📘',
    LogType.success: '✅',
    LogType.error: '🛑',
  };

  static void _log(
      LogType logType,
      Object message, {
        Object? error,
        StackTrace? stackTrace,
      }) {
    final color = _logTypeColors[logType] ?? _reset;
    final icon = _logTypeIcons[logType] ?? '';
    final logMessage = '$icon $color${message.toString()}$_reset';

    if (Platform.isIOS) {
      developer.log(
        message.toString(),
        name: logType.name,
        error: error,
        stackTrace: stackTrace,
      );
    } else {
      developer.log(
        logMessage,
        name: logType.name,
        error: error,
        stackTrace: stackTrace,
      );
    }
  }

  static void info(
      Object message, {
        bool sentry = true,
      }) =>
      _log(LogType.info, message);

  static void success(
      Object message, {
        bool sentry = true,
      }) =>
      _log(LogType.success, message);

  static void error(
      Object message, {
        Object? error,
        StackTrace? stackTrace,
      }) =>
      _log(
        LogType.error,
        message,
        error: error,
        stackTrace: stackTrace,
      );
}
