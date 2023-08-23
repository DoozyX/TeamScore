import 'dart:math';

import 'package:flutter/material.dart';

class ScoreItem extends StatelessWidget {
  final Color color;
  final int score;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ScoreItem({
    super.key,
    required this.color,
    required this.score,
    required this.onIncrement,
    required this.onDecrement,
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
                    Expanded(child: InkWell(onTap: onDecrement)),
                    Expanded(child: InkWell(onTap: onIncrement)),
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
