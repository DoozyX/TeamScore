import 'package:pigeon/pigeon.dart';

// #docregion config
@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/messages.g.dart',
    dartOptions: DartOptions(),
    swiftOut: 'ios/Runner/Messages.g.swift',
    swiftOptions: SwiftOptions(),
    dartPackageName: 'team_score',
  ),
)
// #enddocregion config

// This file and ./messages_test.dart must be identical below this line.

// #docregion host-definitions
enum Code { one, two }

class MessageData {
  int team1Score;
  int team2Score;

  MessageData({required this.team1Score, required this.team2Score});
}

@HostApi()
abstract class TeamScoreHostApi {
  @async
  void sendScore(MessageData message);
}

@FlutterApi()
abstract class TeamScoreFlutterApi {
  void sendScore(MessageData data);
}
