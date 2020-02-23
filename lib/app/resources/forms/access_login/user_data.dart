import 'package:mobx/mobx.dart';
import 'package:user_login/app/resources/forms/access_login/api_util.dart';

part 'user_data.g.dart';

class UserData = _UserDataBase with _$UserData;

abstract class _UserDataBase with Store {

  @observable
  String email = '';

  @action
  changedEmail(String value) {
    email = value;
  }

  @observable
  String password = '';

  @action
  changedPassword(String value) {
    password = value;
  }

  @observable
  bool rememberUser = false;

  @action
  changedRememberUser(bool value) {
    rememberUser = value;
  }

  generate({Map<String, dynamic> data}) {
    this.dataValue = data;
  }

  Map<String, dynamic> get dataValue {
    Map<String, dynamic> values = {
      "email": this.email,
      "password": this.password,
      "rememberUser": this.rememberUser,
    };

    return ApiUtil.dataClear(values);
  }

  set dataValue(Map<String, dynamic> data) {
    if (data != null) {
      if (data['email'] != null) {
        this.email = data['email'];
      }
      if (data['password'] != null) {
        this.password = data['password'];
      }
      if (data['rememberUser'] != null) {
        this.rememberUser = data['rememberUser'];
      }

    }
  }
}
