import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool visible = false;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  isVisible() => visible = !visible;

  @computed
  bool get isEmailValid => email.isNotEmpty && email.contains('@');

  @computed
  bool get isPasswordValid => password.length >= 6;

  @action
  login() {
    Modular.to.pushReplacementNamed('/home');
  }

  @action
  loginPressed() {
    if (isEmailValid && isPasswordValid) {
      login();
    }
  }
}
