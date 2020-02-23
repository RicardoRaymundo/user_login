import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:user_login/app/resources/forms/access_login/user_data.dart';

part 'access_login_controller.g.dart';

//TODO:: Implementar controller adequado para o access_login

class AccessLoginController = _AccessLoginBase with _$AccessLoginController;

abstract class _AccessLoginBase with Store {
  UserData user = UserData();
}
