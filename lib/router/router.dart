import 'package:fluro/fluro.dart';
import 'package:ramses_indalecio_web/router/no_page_found_handlres.dart';
import 'package:ramses_indalecio_web/router/router_hadlers.dart';

class Flurorutas {
  static final FluroRouter router = FluroRouter();
  static String politicasmovil = '/politicasmovil';

  static configureRoutes() {
    //rutas
    router.define('/:page', handler: homeHandler);
    router.define(politicasmovil,
        handler: AdminHandlers.politicasmovil,
        transitionType: TransitionType.none);

    //404
    router.notFoundHandler = NoPageFoundHandlres.noPageFound;
  }
}
