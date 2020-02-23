import 'package:user_login/app/resources/forms/forgot_password/forgot_password_controller.dart';
import 'package:user_login/app/resources/forms/access_login/access_login_controller.dart';
import 'package:user_login/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:user_login/app/app_widget.dart';
import 'package:user_login/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ForgotPasswordController()),
        Bind((i) => AccessLoginController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
