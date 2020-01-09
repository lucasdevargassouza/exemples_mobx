import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = AppControllerBase with _$AppController;

abstract class AppControllerBase with Store {

  @observable
  bool isLogged = false;

  @action
  void changeLoginState(bool value) => this.isLogged = value;

}
