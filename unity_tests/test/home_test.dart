import 'package:estilizacao_componentes/components/box_card.dart';
import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("text spend", (tester) async {
    await tester.pumpWidget(MaterialApp(
        home: BankInherited(
      child: Home(),
    )));
    final spentFinder = find.text('Spent');
    expect(spentFinder, findsOneWidget);
  });
  testWidgets("liner progress find", (tester) async {
    await tester.pumpWidget(MaterialApp(
        home: BankInherited(
      child: Home(),
    )));

    expect(find.byType(LinearProgressIndicator), findsOneWidget);
  });
  testWidgets("find by key", (tester) async {
    await tester.pumpWidget(MaterialApp(
        home: BankInherited(
      child: Home(),
    )));

    expect(find.byKey(const Key('acountKey')), findsOneWidget);
  });
  testWidgets("finds 5 boxcards", (tester) async {
    await tester.pumpWidget(MaterialApp(
        home: BankInherited(
      child: Home(),
    )));
    expect(find.byWidgetPredicate((widget) {
      if (widget is BoxCard) {
        return true;
      } else {
        return false;
      }
    }), findsNWidgets(5));
  });
  testWidgets("when tap Deposit should upload earned in 10", (tester) async {
    await tester.pumpWidget(MaterialApp(
        home: BankInherited(
      child: Home(),
    )));
    await tester.tap(find.text("Deposit"));
    await tester.tap(find.text("Earned"));
    await tester.pumpAndSettle();
    expect(find.text("\$10.0"), findsOneWidget);
  });
}
