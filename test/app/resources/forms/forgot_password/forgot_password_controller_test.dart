import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:user_login/app/app_module.dart';
import 'package:user_login/app/resources/forms/forgot_password/forgot_password_controller.dart';

void main() {
  initModule(AppModule());
  ForgotPasswordController forgotpassword;

  setUp(() {
    forgotpassword = AppModule.to.get<ForgotPasswordController>();
  });

  group('ForgotPasswordController Test', () {
    test("First Test", () {
      expect(forgotpassword, isInstanceOf<ForgotPasswordController>());
    });
  });
}
