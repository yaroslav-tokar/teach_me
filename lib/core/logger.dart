import 'dart:developer';

/// Function provide simple debug functionality
Future<void> logDebug(String message, {Type? type}) async {
  log('debug_$type\t$message');
}
