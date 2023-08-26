import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:team_score/main.dart';

void main() {
  testWidgets('Initial score is 0 0', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    // Verify that our counter starts at 0 0.
    expect(find.text('0'), findsNWidgets(2));
  });
}
