import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:user_login/app/app_module.dart';
import 'package:user_login/app/resources/forms/access_login/access_login_controller.dart';

void main() {
  initModule(AppModule());
  AccessLoginController accesslogin;

  setUp(() {
    accesslogin = AppModule.to.get<AccessLoginController>();
  });

  group('AccessLoginController Test', () {
    test("First Test", () {
      expect(accesslogin, isInstanceOf<AccessLoginController>());
    });
  });
}
