import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'main.dart';

class Settings extends HookWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        channel.setMethodCallHandler((call) async {
          print('call.method');
          print(call.method);
          print('call.arguments');
          print(call.arguments);
          // Receive data from Native
          // switch (call.method) {
          //   case 'sendCounterToFlutter':
          //     // _counter = call.arguments["data"]["counter"];
          //     // _incrementCounter();
          //     call.arguments['data']['counter'];
          //     break;
          //   default:
          //     break;
          // }
        });
        return null;
      },
      [],
    );
    return Center(
      child: ElevatedButton(
        onPressed: () {
          channel.invokeMethod('sendDataToNative', '5');
        },
        child: const Text('RESET'),
      ),
    );
  }
}
