import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:user_login/app/resources/forms/forgot_password/forgot_password_controller.dart';

class ForgotPasswordWidget extends StatelessWidget {
  ForgotPasswordController forgotPasswordController = ForgotPasswordController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Text(
          'Esqueceu sua senha?',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100, color: Colors.grey),
        ),
        SizedBox(height: 30),
        Flexible(
          child: SizedBox(
            height: 42,
            child: TextFormField(
              style: TextStyle(fontSize: 14, color: Colors.grey),
              onChanged: this.forgotPasswordController.changeEmail,
              decoration: InputDecoration(
                hintStyle: TextStyle(),
                hintText: 'usuario@site.com',
                labelText: 'E-mail',
                labelStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Stack(
            children: <Widget>[
              Center(
                child: TextFormField(
                  autofocus: true,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    onChanged: this.forgotPasswordController.changeEmail,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(),
                      //hintText: 'usuario@site.com',
                      labelText: 'E-mail',
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Observer(
                  builder: (_) =>(this.forgotPasswordController.email == '')
                    ? Text(
                        'usuario@site.com',
                        style: TextStyle(color: Colors.grey
                            // Style it according to your requirement / To make it look like hintText
                            ),
                      )
                    : Container(),),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
