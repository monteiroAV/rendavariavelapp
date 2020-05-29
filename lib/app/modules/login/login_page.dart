import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';
import 'widgets/customform.widget.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/imgs/teste5.jpg'),
                fit: BoxFit.cover
              )),
            ),
            Form(
              child: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Bem Vindo!',
                          style: TextStyle(fontSize: 40,
                          color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              CustomForm(
                                enabled: true,
                                hint: 'Email',
                                obscure: false,
                                prefix: Icon(Icons.account_circle),
                                suffix: SizedBox(),
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  controller.setEmail(value);
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CustomForm(
                                enabled: true,
                                hint: 'Senha',
                                obscure:
                                    controller.visible == false ? true : false,
                                prefix: Icon(Icons.lock),
                                suffix: IconButton(
                                  icon: Icon(controller.visible == false
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: controller.isVisible,
                                ),
                                textInputType: TextInputType.text,
                                onChanged: (value) {
                                  controller.setPassword(value);
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Opacity(
                                opacity: controller.email.contains('@') &&
                                        controller.password.length >= 6
                                    ? 1
                                    : 0.5,
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.indigo,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    height: 60,
                                    width: double.infinity,
                                    child: FlatButton(
                                      onPressed: () {
                                        controller.loginPressed();
                                      },
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
