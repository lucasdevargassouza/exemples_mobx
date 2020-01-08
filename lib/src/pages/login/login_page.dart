import 'package:exemples_mobx/src/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPage extends StatelessWidget {
  LoginController _loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Observer(
          builder: (_) => Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  errorText: _loginController.onValidateEmail(),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: _loginController.onChangeEmail,
              ),
              Text(_loginController.email),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  errorText: _loginController.onValidatePassword(),
                ),
                onChanged: _loginController.onChangePassword,
                obscureText: true,
              ),
              Text(_loginController.password),
              RaisedButton(
                onPressed: _loginController.isFormValid ? () {} : null,
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
