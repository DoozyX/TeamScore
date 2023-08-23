import 'package:flutter/material.dart';
import 'package:team_score/score_item.dart';

const kMinWidthOfLargeScreen = 600;

class Scoreboard extends StatelessWidget {
  const Scoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    final isScreenWide =
        MediaQuery.of(context).size.width >= MediaQuery.of(context).size.height;

    return Flex(
      direction: isScreenWide ? Axis.horizontal : Axis.vertical,
      children: [
        Expanded(
          child: ScoreItem(
            color: Colors.green,
            score: 0,
            onIncrement: () {
              print('increment');
            },
            onDecrement: () {
              print('decrement');
            },
          ),
        ),
        // const SizedBox(width: 16, height: 16),
        Expanded(
          child: ScoreItem(
            color: Colors.red,
            score: 0,
            onIncrement: () {},
            onDecrement: () {},
          ),
        ),
      ],
    );
  }
}
