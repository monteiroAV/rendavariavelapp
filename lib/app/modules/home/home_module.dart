import 'package:renda_variavel/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:renda_variavel/app/modules/home/home_page.dart';

import 'package:renda_variavel/app/modules/teste/teste_module.dart';


class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        
      ];

  static Inject get to => Inject<HomeModule>.of();
}
