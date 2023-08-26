import 'logger.dart';

class Metric {
  final TagLogger logger;
  final String name;
  final Stopwatch stopwatch;
  final Level level;

  Metric({
    required this.name,
    required this.stopwatch,
    required this.logger,
    required this.level,
  });

  void stop() {
    stopwatch.stop();
    logger.log(level, '$name took ${stopwatch.elapsedMilliseconds}ms');
  }
}

class TagLogger {
  Logger logger;

  TagLogger(String tag)
      : logger = Logger(
          filter: ProductionFilter(),
          printer: TimePrinter(
            PrefixPrinter(
              TagPrinter(tag),
            ),
          ),
        );

  /// Log a message at level [Level.trace].
  void t(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.t(message, error: error, stackTrace: stackTrace);
  }

  /// Log a message at level [Level.debug].
  void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.d(message, error: error, stackTrace: stackTrace);
  }

  /// Log a message at level [Level.info].
  void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.i(message, error: error, stackTrace: stackTrace);
  }

  /// Log a message at level [Level.warning].
  void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.w(message, error: error, stackTrace: stackTrace);
  }

  /// Log a message at level [Level.error].
  void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.e(message, error: error, stackTrace: stackTrace);
  }

  /// Log a message at level [Level.fatal].
  void fatal(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    logger.f(message, error: error, stackTrace: stackTrace);
  }

  /// Log a message with [level].
  void log(
    Level level,
    dynamic message, [
    dynamic error,
    StackTrace? stackTrace,
  ]) {
    logger.log(level, message, error: error, stackTrace: stackTrace);
  }

  Metric startMetric(String name, [Level level = Level.trace]) {
    log(level, name);

    return Metric(
      logger: this,
      name: name,
      stopwatch: Stopwatch()..start(),
      level: level,
    );
  }
}
