import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_model.freezed.dart';

@freezed
class ConnectionModel with _$ConnectionModel {
  const factory ConnectionModel({
    required String? host,
    required bool connected,
  }) = _ConnectionModel;

  factory ConnectionModel.disconnected() => const ConnectionModel(
        host: null,
        connected: false,
      );

  factory ConnectionModel.connected(String host) => ConnectionModel(
        host: host,
        connected: true,
      );
}
