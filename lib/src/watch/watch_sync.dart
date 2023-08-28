import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team_score/src/logger/logger.dart';
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
  final logger = TagLogger('WatchSync');
  if (kIsWeb || !Platform.isIOS) {
    return;
  }
  ScoreModel? lastSynced;

  final hostApi = TeamScoreHostApi();

  ref.listen(scoreProvider, (previous, next) {
    logger.t('score changed ${next.team1Score} - ${next.team2Score}');
    if (lastSynced == next) {
      logger.t('already synced');
      return;
    }
    logger.t('send score to watch');
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
      logger.t(
        'receive score from watch: ${score.team1Score} - ${score.team2Score}',
      );
      if (lastSynced == score) {
        logger.t('already synced');
        return;
      }
      lastSynced = score;
      scoreNotifier.updateScore(score);
    }),
  );
}
