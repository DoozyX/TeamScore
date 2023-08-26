import 'dart:convert';

// Handles any object that is causing JsonEncoder() problems
Object toEncodableFallback(dynamic object) {
  return object.toString();
}

String stringifyMessage(dynamic message) {
  final finalMessage = message is Function ? message() : message;
  if (finalMessage is Map || finalMessage is Iterable) {
    const encoder = JsonEncoder.withIndent('  ', toEncodableFallback);
    return encoder.convert(finalMessage);
  } else {
    return finalMessage.toString();
  }
}
