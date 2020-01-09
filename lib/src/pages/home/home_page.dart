import 'package:exemples_mobx/src/services/app_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppController _appController = GetIt.I.get<AppController>();

    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) => Text('${_appController.isLogged}')),
      ),
    );
  }
}
