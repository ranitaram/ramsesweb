import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollcontroller = PageController();

  List<String> _pages = [
    'home',
    'about',
    'portafolio',
    'call of duty',
    'contacto',
  ];

  int _currentIndex = 0;

  createScrollController(String routeName) {
    this.scrollcontroller =
        PageController(initialPage: getPageIndex(routeName));
    html.document.title =
        _pages[getPageIndex(routeName)]; //cambiar titulo paso1

    scrollcontroller.addListener(() {
      final index = (scrollcontroller.page ?? 0).round();

      if (index != _currentIndex) {
        html.window.history.pushState(null, 'none', '#/${_pages[index]}');
        _currentIndex = index;
        html.document.title = _pages[index]; //cambiar titulo paso 2.
      }
    });
  }

  int getPageIndex(String routeName) {
    return (_pages.indexOf(routeName) == -1) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    //html.window.history.pushState(null, 'none', '#/${_pages[index]}');
    scrollcontroller.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
