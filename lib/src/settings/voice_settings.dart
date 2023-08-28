import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:team_score/src/voice/voice.dart';

class VoiceSettings extends HookConsumerWidget {
  const VoiceSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final voice = ref.watch(voiceProvider);
    final voiceNotifier = ref.watch(voiceProvider.notifier);
    final enabled = voice is VoiceSettingsEnabled;
    final activeVoice = useState<int>(0);
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            if (enabled) {
              voiceNotifier.disable();
            } else {
              voiceNotifier.enable();
            }
          },
          child: Text(enabled ? 'DISABLE' : 'ENABLE'),
        ),
        if (enabled) ...[
          DropdownButton(
            value: voice.voices[activeVoice.value],
            onChanged: (value) {
              if (value != null) {
                activeVoice.value = voice.voices.indexOf(value);
                voiceNotifier.setVoice(value);
              }
            },
            items: voice.voices
                .map(
                  (e) => DropdownMenuItem(value: e, child: Text(e.name)),
                )
                .toList(),
          ),
          ElevatedButton(
            onPressed: () {
              voiceNotifier.test();
            },
            child: const Text('Test voice'),
          ),
        ],
      ],
    );
  }
}
