import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:team_score/score_board.dart';
import 'package:team_score/settings.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

const channel = MethodChannel('com.doozyx.teamscore-ios-channel');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 1);

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
