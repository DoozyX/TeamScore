import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team_score/src/logger/logger.dart';
import 'package:team_score/src/network/network.dart';
import 'package:team_score/src/score/score.dart';

part 'network_score_sync.g.dart';

@Riverpod(keepAlive: true)
void networkScoreSync(NetworkScoreSyncRef ref) {
  final logger = TagLogger('NetworkScoreSync');
  ScoreModel? lastSynced;

  final serverNotifier = ref.watch(serverProvider.notifier);
  final clientNotifier = ref.watch(clientProvider.notifier);

  void sendScore(ScoreModel score) {
    logger.t('send score to network');
    final serverConnected = ref.read(serverProvider).connected;
    if (serverConnected) serverNotifier.send(score.toValue());

    final clientConnected = ref.read(clientProvider).connected;
    if (clientConnected) clientNotifier.send(score.toValue());
  }

  ref.listen(scoreProvider, (previous, next) {
    logger.t('score changed ${next.team1Score} - ${next.team2Score}');
    logger.t('changed $lastSynced $next  ${lastSynced == next}');
    if (lastSynced == next) {
      logger.t('already synced');
      return;
    }
    logger.t('send score to network');
    sendScore(next);
    lastSynced = next;
  });

  final scoreNotifier = ref.watch(scoreProvider.notifier);

  clientNotifier.setOnData((data) {
    logger.t('received client data $data');
    final score = ScoreModel.fromValue(data);
    if (lastSynced == score) {
      logger.t('already synced');
      return;
    }

    lastSynced = score;
    scoreNotifier.updateScore(score);
  });

  serverNotifier.setOnData((data) {
    logger.t('received server data $data');
    final score = ScoreModel.fromValue(data);
    if (lastSynced == score) {
      logger.t('already synced');
      return;
    }

    serverNotifier.send(data);
    lastSynced = score;
    scoreNotifier.updateScore(score);
  });
}
