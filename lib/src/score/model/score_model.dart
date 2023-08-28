import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_model.freezed.dart';

@freezed
class ScoreModel with _$ScoreModel {
  const ScoreModel._();

  const factory ScoreModel({
    required int team1Score,
    required int team2Score,
  }) = _ScoreModel;

  factory ScoreModel.initial() => const ScoreModel(
        team1Score: 0,
        team2Score: 0,
      );

  factory ScoreModel.fromValue(String score) {
    final scores = score.split(':');
    return ScoreModel(
      team1Score: int.parse(scores[0]),
      team2Score: int.parse(scores[1]),
    );
  }

  String toValue() => '$team1Score:$team2Score';
}
