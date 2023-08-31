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

    Future<String?> qrScannerDialog(BuildContext context) {
      return showDialog<String?>(
        context: context,
        builder: (BuildContext context) {
          return Scaffold(
            body: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Scan QR code'),
                    CloseButton(),
                  ],
                ),
                Expanded(
                  child: MobileScanner(
                    onDetect: (capture) {
                      final List<Barcode> barcodes = capture.barcodes;
                      final barcode = barcodes.firstOrNull?.rawValue;
                      logger.t('Barcode scanned: $barcode');
                      Navigator.of(context).pop(barcode);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Column(
      children: switch (client) {
        AsyncData(:final value) => switch (value) {
            ConnectionModelDisconnected() => [
                ElevatedButton(
                  onPressed: () async {
                    final hostAddress = await qrScannerDialog(context);
                    logger.t('scanned hostAddress: $hostAddress');
                    if (hostAddress == null) {
                      return;
                    }
                    await clientNotifier.connect(hostAddress);
                  },
                  child: const Text('CONNECT'),
                ),
              ],
            ConnectionModelConnected(:final host) => [
                ElevatedButton(
                  onPressed: () {
                    clientNotifier.disconnect();
                  },
                  child: const Text('DISCONNECT'),
                ),
                Text('Connected to $host'),
              ]
          },
        AsyncError(:final error) => [
            ElevatedButton(
              onPressed: () async {
                final hostAddress = await qrScannerDialog(context);
                logger.t('scanned hostAddress: $hostAddress');
                if (hostAddress == null) {
                  return;
                }
                await clientNotifier.connect(hostAddress);
              },
              child: const Text('CONNECT'),
            ),
            Text('Error: $error'),
          ],
        _ => const [CircularProgressIndicator()],
      },
    );
  }
}
