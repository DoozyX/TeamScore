import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team_score/src/score/score.dart';

part 'score.g.dart';

@Riverpod(keepAlive: true)
class Score extends _$Score {
  @override
  ScoreModel build() {
    return ScoreModel.initial();
  }

  void reset() {
    state = ScoreModel.initial();
  }

  void updateTeam1Score(int score) {
    state = state.copyWith(team1Score: score);
  }

  void updateTeam2Score(int score) {
    state = state.copyWith(team2Score: score);
  }

  void updateScore(ScoreModel score) {
    state = score;
  }
}
