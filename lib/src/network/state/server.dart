import 'dart:io';

import 'package:network_info_plus/network_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team_score/src/logger/logger.dart';
import 'package:team_score/src/network/network.dart';

part 'server.g.dart';

const port = 4040;

@Riverpod(keepAlive: true)
class Server extends _$Server {
  final _logger = TagLogger('NetworkServer');
  final List<Socket> _connections = [];
  ServerSocket? _server;
  OnData? _onData;
  @override
  ConnectionModel build() {
    return ConnectionModel.disconnected();
  }

  Future<void> start() async {
    final info = NetworkInfo();
    final wifiIP = await info.getWifiIP();
    if (wifiIP == null) {
      _logger.e('wifiIP is null');
      return;
    }

    _server = await ServerSocket.bind(wifiIP, port);
    state = ConnectionModel.connected('$wifiIP:$port');
    _logger
        .t('server started, listening on $port, address ${_server!.address}');
    _server!.listen(
      (socket) {
        _logger.t('connection from $socket');
        if (!_connections.contains(socket)) {
          _logger.t('adding to connections $socket');
          _connections.add(socket);
        }
        socket.listen(
          (data) {
            final value = String.fromCharCodes(data);
            _logger.t('received data $value');
            _onData?.call(value);
          },
          onError: (error) => _logger.e(error, error),
          onDone: () {
            _logger.t('done $socket');
            _connections.remove(socket);
          },
        );
      },
      onError: (error) => _logger.e('server', error),
      onDone: () {
        state = ConnectionModel.disconnected();

        _logger.t('server done');
      },
    );
  }

  void stop() {
    _server?.close();
    _connections.clear();
    _server = null;
    state = ConnectionModel.disconnected();
  }

  void setOnData(OnData onData) {
    _onData = onData;
  }

  Future<void> send(String message) async {
    _logger
        .t('send $message to ${_connections.length} connections $_connections');
    for (final connection in _connections) {
      connection.write(message);
    }
  }
}
