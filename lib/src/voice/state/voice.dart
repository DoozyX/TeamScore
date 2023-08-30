import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team_score/src/logger/logger.dart';
import 'package:team_score/src/score/score.dart';
import 'package:team_score/src/voice/voice.dart';

part 'voice.g.dart';

@Riverpod(keepAlive: true)
class Voice extends _$Voice {
  final _logger = TagLogger('Voice');
  bool _initialized = false;
  final _flutterTts = FlutterTts();
  List<VoiceModel> _voices = [];

  Future<void> _initTTS() async {
    if (_initialized) {
      return;
    }
    _initialized = true;
    _voices = ((await _flutterTts.getVoices) as List<dynamic>)
        .map((value) => VoiceModel.fromValue(value))
        .where((element) => element.locale == 'en-US')
        .toList();
    _logger.t('voices $_voices');
    if (kIsWeb || !Platform.isIOS) {
      return;
    }
    await _flutterTts.setSharedInstance(true);
    await _flutterTts.setLanguage('en-US');
    await _flutterTts.setIosAudioCategory(
      IosTextToSpeechAudioCategory.playback,
      [
        IosTextToSpeechAudioCategoryOptions.mixWithOthers,
        IosTextToSpeechAudioCategoryOptions.duckOthers,
      ],
    );
  }

  @override
  VoiceSettingsModel build() {
    ref.listen(scoreProvider, (previous, next) {
      _flutterTts.stop();
      if (state is VoiceSettingsEnabled) {
        _flutterTts.speak('${next.team1Score} to ${next.team2Score}');
      }
    });
    return const VoiceSettingsModel.disabled();
  }

  Future<void> enable() async {
    await _initTTS();
    state = VoiceSettingsModel.enabled(_voices);
  }

  void disable() {
    state = const VoiceSettingsModel.disabled();
  }

  void setVoice(VoiceModel voice) {
    _flutterTts.setVoice({'name': voice.name, 'locale': voice.locale});
    state = VoiceSettingsModel.enabled(_voices);
  }

  void test() {
    _flutterTts.speak('Hello World!');
  }
}
