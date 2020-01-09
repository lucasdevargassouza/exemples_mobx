import 'package:exemples_mobx/src/pages/home/home_page.dart';
import 'package:exemples_mobx/src/pages/login/login_controller.dart';
import 'package:exemples_mobx/src/services/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget {
  final LoginController _loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    final AppController _appController = GetIt.I.get<AppController>();

    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) => Text('${_appController.isLogged}')),
      ),
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
                onPressed: _loginController.isFormValid
                    ? () {
                        _appController.changeLoginState(true);
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Homepage()));
                      }
                    : null,
                child: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
