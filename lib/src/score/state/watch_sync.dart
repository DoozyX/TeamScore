import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team_score/src/messages.g.dart';
import 'package:team_score/src/score/score.dart';

part 'watch_sync.g.dart';

typedef ScoreReceived = void Function(ScoreModel score);

class TeamScoreFlutterApiHandler extends TeamScoreFlutterApi {
  TeamScoreFlutterApiHandler(this.callback);

  final ScoreReceived callback;

  @override
  void sendScore(MessageData data) {
    callback(
      ScoreModel(team1Score: data.team1Score, team2Score: data.team2Score),
    );
  }
}

@Riverpod(keepAlive: true)
void watchSync(WatchSyncRef ref) {
  if (kIsWeb || !Platform.isIOS) {
    return;
  }
  ScoreModel? lastSynced;

  final hostApi = TeamScoreHostApi();

  ref.listen(scoreProvider, (previous, next) {
    // print('[FLUTTER] score changed ${next.team1Score} - ${next.team2Score}');
    // print('changed $lastSynced $next  ${lastSynced == next}');
    if (lastSynced == next) {
      // print('[FLUTTER] already synced');
      return;
    }
    // print('[FLUTTER] send score: ${next.team1Score} - ${next.team2Score}');
    hostApi.sendScore(
      MessageData(
        team1Score: next.team1Score,
        team2Score: next.team2Score,
      ),
    );
    lastSynced = next;
  });

  final scoreNotifier = ref.watch(scoreProvider.notifier);
  TeamScoreFlutterApi.setup(
    TeamScoreFlutterApiHandler((score) {
      // print(
      //     '[FLUTTER] receive score: ${score.team1Score} - ${score.team2Score}');
      if (lastSynced == score) {
        // print('[FLUTTER] already synced');
        return;
      }
      lastSynced = score;
      scoreNotifier.updateScore(score);
    }),
  );
}
