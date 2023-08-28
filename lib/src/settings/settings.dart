import 'package:flutter/material.dart';

import 'game_settings.dart';
import 'network_settings.dart';
import 'voice_settings.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.games),
                text: 'Game',
              ),
              Tab(
                icon: Icon(Icons.speaker),
                text: 'Voice',
              ),
              Tab(
                icon: Icon(Icons.network_wifi),
                text: 'Network',
              ),
            ],
          ),
          title: const Text('Settings'),
        ),
        body: const TabBarView(
          children: [
            GameSettings(),
            VoiceSettings(),
            NetworkSettings(),
          ],
        ),
      ),
    );
  }
}
