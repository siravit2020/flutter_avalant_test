import 'package:flutter/material.dart';
import 'package:flutter_avalant_test/main.dart';
import 'package:flutter_avalant_test/tab_container.dart';
import 'package:flutter_avalant_test/tab_item.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("Integration test", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(TabContainer), findsOneWidget);
    expect(find.text('Current active tab index #'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(find.text('A'), findsOneWidget);
    expect(find.byKey(Key('tab_0')), findsOneWidget);
    expect(find.byKey(Key('tab_1')), findsOneWidget);
    expect(find.byKey(Key('tab_2')), findsOneWidget);
    GestureDetector tab_0 = find.byKey(Key('tab_0'))
        .evaluate()
        .first
        .widget as GestureDetector;
    GestureDetector tab_1 = find.byKey(Key('tab_1'))
        .evaluate()
        .first
        .widget as GestureDetector;
    GestureDetector tab_2 = find.byKey(Key('tab_2'))
        .evaluate()
        .first
        .widget as GestureDetector;
    tab_1.onTap!();
    await tester.pumpAndSettle();
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('1'), findsOneWidget);
    expect(find.text('B'), findsOneWidget);
    tab_2.onTap!();
    await tester.pumpAndSettle();
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('2'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
    tab_0.onTap!();
    await tester.pumpAndSettle();
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('0'), findsOneWidget);
    expect(find.text('A'), findsOneWidget);
    tab_2.onTap!();
    await tester.pumpAndSettle();
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.text('2'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
    await tester.pumpAndSettle();
    // tester.tap(find.byKey(Key('tap_2')));
  });
}
