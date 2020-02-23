import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:user_login/app/resources/forms/forgot_password/forgot_password_widget.dart';

main() {
  testWidgets('ForgotPasswordWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ForgotPasswordWidget()));
    final textFinder = find.text('ForgotPassword');
    expect(textFinder, findsOneWidget);
  });
}
