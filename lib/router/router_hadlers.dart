import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';
import 'package:ramses_indalecio_web/providers/page_provider.dart';
import 'package:ramses_indalecio_web/ui/pages/home_page.dart';
import 'package:ramses_indalecio_web/ui/pages/politicas_privacidad_apps.dart';
import 'package:universal_html/js.dart';

//import 'package:universal_html/js.dart';
final politicas = Handler(handlerFunc: (context, params) {
  return const PoliticaPrivacidadSinopsis();
});
final homeHandler = Handler(handlerFunc: (context, params) {
  //para que no se mande 2 veces y no exista conflicto
  final page = params['page']!.first;
  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollController(page);

    return HomePage();
  }
});

// class AdminHandlers {
//   static Handler politicasmovil = Handler(handlerFunc: (context, params) {
//     return const PoliticaPrivacidadSinopsis();
//   });
// }
