import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:team_score/src/settings/client_settings.dart';
import 'package:team_score/src/settings/server_settings.dart';

class NetworkSettings extends HookWidget {
  const NetworkSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedMode = useState(0);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SegmentedButton<int>(
            segments: const <ButtonSegment<int>>[
              ButtonSegment<int>(
                value: 0,
                label: Text('Client'),
                icon: Icon(Icons.looks_one),
              ),
              ButtonSegment<int>(
                value: 1,
                label: Text('Server'),
                icon: Icon(Icons.connect_without_contact),
              ),
            ],
            selected: {selectedMode.value},
            onSelectionChanged: (final newSelection) {
              selectedMode.value = newSelection.first;
            },
          ),
          const SizedBox(height: 8),
          if (selectedMode.value == 0)
            const ClientSettings()
          else
            const ServerSettings(),
        ],
      ),
    );
  }
}
