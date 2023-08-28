import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:team_score/src/logger/logger.dart';
import 'package:team_score/src/network/network.dart';

class ClientSettings extends ConsumerWidget {
  const ClientSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = TagLogger('ClientSettings');

    final client = ref.watch(clientProvider);
    final clientNotifier = ref.watch(clientProvider.notifier);
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final hostAddress = await _dialogBuilder(context);
          logger.t('scanned hostAddress: $hostAddress');
          if (hostAddress == null) {
            return;
          }
          await clientNotifier.connect(hostAddress);
        },
        child: Text(client.connected ? 'DISCONNECT' : 'CONNECT'),
      ),
    );
  }
}

Future<String?> _dialogBuilder(BuildContext context) {
  return showDialog<String?>(
    context: context,
    builder: (BuildContext context) {
      return MobileScanner(
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          for (final barcode in barcodes) {
            debugPrint('Barcode found! ${barcode.rawValue}');
            Navigator.of(context).pop(barcode.rawValue);
          }
        },
      );
    },
  );
}
