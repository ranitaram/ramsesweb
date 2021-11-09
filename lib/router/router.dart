import 'package:fluro/fluro.dart';
import 'package:ramses_indalecio_web/router/no_page_found_handlres.dart';
import 'package:ramses_indalecio_web/router/router_hadlers.dart';

class Flurorutas {
  static final FluroRouter router = FluroRouter();

  static configureRoutes() {
    //rutas
    router.define('/:page', handler: homeHandler);
    //404
    router.notFoundHandler = NoPageFoundHandlres.noPageFound;
  }
}
