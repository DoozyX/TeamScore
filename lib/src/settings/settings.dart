import 'package:flutter/material.dart';
import 'package:team_score/src/settings/game_settings.dart';

import 'network_settings.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.games)),
              Tab(icon: Icon(Icons.network_wifi)),
            ],
          ),
          title: const Text('Settings'),
        ),
        body: const TabBarView(
          children: [
            GameSettings(),
            NetworkSettings(),
          ],
        ),
      ),
    );
  }
}
