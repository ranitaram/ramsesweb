import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramses_indalecio_web/providers/page_provider.dart';

import 'package:ramses_indalecio_web/ui/shared/custom_app_menu.dart';

import 'package:ramses_indalecio_web/ui/views/about_view.dart';
import 'package:ramses_indalecio_web/ui/views/call_of_duty_view.dart';
import 'package:ramses_indalecio_web/ui/views/contacto_view.dart';
import 'package:ramses_indalecio_web/ui/views/home_view.dart';
import 'package:ramses_indalecio_web/ui/views/portafolio_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _HommeBody(),
            Positioned(right: 20, top: 20, child: CustomAppMenu())
          ],
        ),
      ),
    );
  }
}

class _HommeBody extends StatelessWidget {
  const _HommeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView(
      controller: pageProvider.scrollcontroller,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        AboutView(),
        PortafolioView(),
        CallOfDutyView(),
        ContactoView(),
      ],
    );
    // Container(
    //   color: Colors.blue[800],
    // );
  }
}
