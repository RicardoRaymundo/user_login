import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:user_login/app/resources/forms/access_login/access_login_widget.dart';

main() {
  testWidgets('AccessLoginWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(AccessLoginWidget()));
    final textFinder = find.text('AccessLogin');
    expect(textFinder, findsOneWidget);
  });
}
