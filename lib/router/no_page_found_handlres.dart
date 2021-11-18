import 'package:fluro/fluro.dart';
import 'package:ramses_indalecio_web/ui/pages/no_page_found.dart';
//import 'package:universal_html/js.dart' as html;

class NoPageFoundHandlres {
  static Handler noPageFound = Handler(handlerFunc: (context, params) {
    return const NoPageFound();
  });
}
