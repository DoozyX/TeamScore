import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team_score/src/logger/logger.dart';
import 'package:team_score/src/network/network.dart';

part 'client.g.dart';

@Riverpod(keepAlive: true)
class Client extends _$Client {
  final _logger = TagLogger('[NetworkSync]');
  Socket? _socket;
  OnData? _onData;

  @override
  ConnectionModel build() {
    ref.onDispose(() {
      _logger.t('stop client');
      _socket?.destroy();
    });
    return ConnectionModel.disconnected();
  }

  void setOnData(OnData onData) {
    _onData = onData;
  }

  Future<void> connect(String hostAddress) async {
    _logger.t('connect to $hostAddress');
    final [host, port] = hostAddress.split(':');
    _socket = await Socket.connect(host, int.parse(port));
    state = ConnectionModel.connected(host);
    _socket!.listen(
      (data) {
        final value = String.fromCharCodes(data);
        _logger.t('received data $value');
        _onData?.call(value);
      },
      onError: (error) => _logger.e(error, error),
      onDone: () => _logger.t('done'),
    );
    _socket!.write('connected');
  }

  Future<void> send(String message) async {
    _socket!.write(message);
  }
}
