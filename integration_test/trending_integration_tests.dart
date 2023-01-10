import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:photo_sharing_app/main.dart' as app;
import 'package:photo_sharing_app/main.dart';

const noPumpFrames = 10 ;

void pumpMultipleFrames (WidgetTester tester)async
{
  for (int i = 0; i < noPumpFrames; i++) {
    await tester.pump(const Duration(seconds: 2));
  }
}
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
            (tester) async {
          app.main();
          // await tester.pumpAndSettle();
          for (int i = 0; i < 5; i++) {
            await tester.pump(const Duration(seconds: 2));
          }
          print ('pumped and settled ');
          // Verify the counter starts at 0.
          expect(find.byKey(const ValueKey('index_1')), findsOneWidget);
          //
          //
          //
          // // Trigger a frame.
          //
          //
          // // Verify the counter increments by 1.
          // expect(find.text('1'), findsOneWidget);
        });
  });
}
