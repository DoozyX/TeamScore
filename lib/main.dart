import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_score/src/score/score.dart';
import 'package:team_score/src/scoreboard/score_board.dart';
import 'package:team_score/src/settings/settings.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController controller = PageController(initialPage: 1);
    ref.watch(watchSyncProvider);
    return MaterialApp(
      title: 'TeamScore',
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
        },
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: PageView(
          controller: controller,
          children: const [
            Settings(),
            Scoreboard(),
          ],
        ),
      ),
    );
  }
}
