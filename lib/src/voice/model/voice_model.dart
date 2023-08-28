import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice_model.freezed.dart';

@freezed
class VoiceModel with _$VoiceModel {
  const factory VoiceModel({
    required String name,
    required String locale,
  }) = _VoiceModel;

  factory VoiceModel.fromValue(dynamic value) =>
      VoiceModel(name: value['name'], locale: value['locale']);
}

@freezed
sealed class VoiceSettingsModel with _$VoiceSettingsModel {
  const factory VoiceSettingsModel.disabled() = VoiceSettingsDisabled;

  const factory VoiceSettingsModel.enabled(List<VoiceModel> voices) =
      VoiceSettingsEnabled;
}
