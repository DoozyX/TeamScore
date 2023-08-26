import 'logger.dart';

class TagPrinter extends LogPrinter {
  final String tag;

  TagPrinter(this.tag);

  @override
  List<String> log(LogEvent event) {
    return ['[$tag] ${stringifyMessage(event.message)}'];
  }
}
