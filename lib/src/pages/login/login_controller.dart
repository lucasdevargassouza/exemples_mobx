import 'package:mobx/mobx.dart';
import 'package:email_validator/email_validator.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  @observable
  String email = "";
  @action
  onChangeEmail(String value) => this.email = value;
  String onValidateEmail() {
    if (this.email.isEmpty) return "Campo obrigatório!";
    if (!EmailValidator.validate(this.email)) return "Email inválido!!";

    return null;
  }

  @observable
  String password = "";
  @action
  onChangePassword(String value) => this.password = value;
  String onValidatePassword() {
    if (this.password.isEmpty) return "Campo obrigatório!";

    return null;
  }

  @computed
  bool get isFormValid => (this.onValidateEmail() == null && this.onValidatePassword() == null);
}
