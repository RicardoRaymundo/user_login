import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:user_login/app/resources/forms/access_login/access_login_controller.dart';

class AccessLoginWidget extends StatefulWidget {
  @override
  _AccessLoginWidgetState createState() => _AccessLoginWidgetState();
}

class _AccessLoginWidgetState extends State<AccessLoginWidget> {
  AccessLoginController accessLoginController = AccessLoginController();

  @override
  Widget build(BuildContext context) {
    accessLoginController.user.dataValue = {"email": "abc", "password": "sAHAHAs", "rememberUser": false};
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Login de acesso',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Container(
            child: Flexible(
              child: SizedBox(
                height: 42,
                child: TextFormField(
                  controller: TextEditingController(text: accessLoginController.user.email),
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  onChanged: accessLoginController.user.changedEmail,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(fontSize: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Flexible(
            child: SizedBox(
              height: 40,
              child: TextFormField(
                controller: TextEditingController(text: accessLoginController.user.password),
                obscureText: true,
                onChanged: accessLoginController.user.changedPassword,
                decoration: InputDecoration(
                  suffixIcon: Icon(OMIcons.removeRedEye),
                  labelText: 'Senha',
                  labelStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: <Widget>[
                Switch(
                    value: accessLoginController.user.rememberUser,
                    onChanged: (bool value) {
                      setState(() {
                        accessLoginController.user.changedRememberUser(value);
                      });
                    }),
                Text('Lembrar do usuário'),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            width: double.infinity,
            child: FlatButton(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide.none,
              ),
              color: Colors.purple,
              child: Text(
                'Entrar',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print(accessLoginController.user.dataValue);
              },
            ),
          ),
          SizedBox(height: 13),
          SizedBox(
            height: 30,
            width: double.infinity,
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.purple, width: 2),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              color: Colors.purple,
              child: Text(
                'Esqueceu sua senha?',
                style: TextStyle(color: Colors.purple),
              ),
              onPressed: () {},
            ),
          ),
          Observer(
            builder: (_) => Container(
              child: Text('Name: ' +
                  accessLoginController.user.email +
                  ', Email : ' +
                  accessLoginController.user.password +
                  ', Lembrar usuário : ' +
                  accessLoginController.user.rememberUser.toString()),
            ),
          ),
          Container(
            color: Colors.purple,
            height: 100,
          ),
          Observer(
            builder: (_) => Container(
              child: Text('Name: ' +
                  accessLoginController.user.email +
                  ', Email : ' +
                  accessLoginController.user.password +
                  ', Lembrar usuário : ' +
                  accessLoginController.user.rememberUser.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
