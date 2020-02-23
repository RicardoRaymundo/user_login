import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'forgot_password_controller.g.dart';

class ForgotPasswordController = _ForgotPasswordBase
    with _$ForgotPasswordController;

abstract class _ForgotPasswordBase with Store {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @observable
  String email = '';

  @action
  changeEmail(String newEmail) {
    print('Email: $email');
    email = newEmail;
    return email;
  }
}
