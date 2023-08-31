import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_model.freezed.dart';

@freezed
sealed class ConnectionModel with _$ConnectionModel {
  const factory ConnectionModel.disconnected() = ConnectionModelDisconnected;

  const factory ConnectionModel.connected(String host) =
      ConnectionModelConnected;
}
