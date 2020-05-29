import 'package:renda_variavel/app/modules/teste/teste_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:renda_variavel/app/modules/teste/teste_page.dart';

class TesteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TesteController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TestePage()),
      ];

  static Inject get to => Inject<TesteModule>.of();
}
