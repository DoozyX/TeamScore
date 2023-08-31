import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:team_score/src/network/model/connection_model.dart';
import 'package:team_score/src/score/score.dart';

class ServerSettings extends ConsumerWidget {
  const ServerSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final server = ref.watch(serverProvider);
    final serverNotifier = ref.watch(serverProvider.notifier);
    return ListView(
      children: [
        ...(switch (server) {
          ConnectionModelDisconnected() => [
              ElevatedButton(
                onPressed: () {
                  serverNotifier.start();
                },
                child: const Text('START'),
              ),
            ],
          ConnectionModelConnected(:final host) => [
              ElevatedButton(
                onPressed: () {
                  serverNotifier.stop();
                },
                child: const Text('STOP'),
              ),
              QrImageView(
                data: host,
                version: QrVersions.auto,
              ),
              Text(host),
            ],
        }),
      ],
    );
  }
}
