import 'package:flutter/material.dart';
import 'package:user_login/app/resources/forms/access_login/access_login_widget.dart';
import 'package:user_login/app/resources/forms/forgot_password/forgot_password_widget.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccessLoginWidget(),
    );
  }
}
