import 'package:intl/intl.dart';

import 'logger.dart';

class TimePrinter extends LogPrinter {
  final LogPrinter _realPrinter;

  static final DateTime _startTime = DateTime.now();

  TimePrinter(this._realPrinter);

  @override
  List<String> log(LogEvent event) {
    final realLogs = _realPrinter.log(event);
    final time = _getTimeString();
    return realLogs.map((log) => '$time $log').toList();
  }

  String _getTimeString() {
    final now = DateTime.now();
    final durationSinceStart = now.difference(_startTime).toString();
    final currentTime = DateFormat('HH:mm:ss:SS').format(now);
    return '$currentTime (+$durationSinceStart)';
  }
}
