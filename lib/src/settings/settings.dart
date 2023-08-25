import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_score/src/score/score.dart';

class Settings extends ConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scoreNotifier = ref.watch(scoreProvider.notifier);
    return Center(
      child: ElevatedButton(
        onPressed: () {
          scoreNotifier.reset();
        },
        child: const Text('RESET'),
      ),
    );
  }
}
