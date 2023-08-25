import 'dart:math';

import 'package:flutter/material.dart';

typedef OnScoreChange = void Function(int score);

class ScoreItem extends StatelessWidget {
  final Color color;
  final int score;
  final OnScoreChange onScoreChange;

  const ScoreItem({
    super.key,
    required this.color,
    required this.score,
    required this.onScoreChange,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final minSize = min(constraints.maxWidth, constraints.maxHeight);
        return Container(
          decoration: BoxDecoration(
            color: color,
          ),
          child: Stack(
            children: [
              Center(
                child: Text(
                  score.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white, fontSize: minSize / 2),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(onTap: () => onScoreChange(score - 1)),
                    ),
                    Expanded(
                      child: InkWell(onTap: () => onScoreChange(score + 1)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
