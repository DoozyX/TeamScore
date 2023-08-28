import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:team_score/src/score/score.dart';

class ServerSettings extends ConsumerWidget {
  const ServerSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final server = ref.watch(serverProvider);
    final serverNotifier = ref.watch(serverProvider.notifier);
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            if (server.connected) {
              serverNotifier.stop();
            } else {
              serverNotifier.start();
            }
          },
          child: Text(server.connected ? 'STOP' : 'START'),
        ),
        if (server.connected)
          QrImageView(
            data: server.host!,
            version: QrVersions.auto,
          ),
      ],
    );
  }
}
