import 'package:renda_variavel/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:renda_variavel/app/app_widget.dart';
import 'package:renda_variavel/app/modules/home/home_module.dart';


import 'modules/login/login_module.dart';
import 'modules/teste/teste_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: LoginModule()),
        Router('/home', module: HomeModule()),
        Router('/geral', module: TesteModule())
        
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
