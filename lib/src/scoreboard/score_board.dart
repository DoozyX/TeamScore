import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_score/src/score/score.dart';
import 'package:team_score/src/scoreboard/score_item.dart';

class Scoreboard extends ConsumerWidget {
  const Scoreboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScreenWide =
        MediaQuery.of(context).size.width >= MediaQuery.of(context).size.height;
    final score = ref.watch(scoreProvider);
    final scoreNotifier = ref.watch(scoreProvider.notifier);

    return Flex(
      direction: isScreenWide ? Axis.horizontal : Axis.vertical,
      children: [
        Expanded(
          child: ScoreItem(
            color: Colors.green,
            score: score.team1Score,
            onScoreChange: (score) {
              scoreNotifier.updateTeam1Score(score);
            },
          ),
        ),
        Expanded(
          child: ScoreItem(
            color: Colors.red,
            score: score.team2Score,
            onScoreChange: (score) {
              scoreNotifier.updateTeam2Score(score);
            },
          ),
        ),
      ],
    );
  }
}
