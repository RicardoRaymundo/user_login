import 'package:mobx/mobx.dart';
import 'package:user_login/app/resources/forms/access_login/api_util.dart';

class UserData {
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
  /*
  TextValueNumberData({Map<String, dynamic> data}) {
    this.dataValue = data;
  }

  factory TextValueNumberData.fromItemApi(Map<String, dynamic> data) {
    return TextValueNumberData(data: data);
  }

  Map<String, dynamic> get dataValue {
    Map<String, dynamic> values = {
      "text": this.text,
      "value": this.value,
    };

    return ApiUtil.dataClear(values);
  }

  set dataValue(Map<String, dynamic> data) {
    if (data != null) {
      if (data['text'] != null) {
        this.text = data['text'];
      }
      if (data['value'] != null) {
        this.value = data['value'];
      }
    }
  }*/
}
