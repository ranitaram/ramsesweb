import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ramses_indalecio_web/providers/page_provider.dart';

import 'package:ramses_indalecio_web/ui/shared/custom_app_menu.dart';
import 'package:ramses_indalecio_web/ui/views/about_mobile_view.dart';

import 'package:ramses_indalecio_web/ui/views/about_view.dart';
import 'package:ramses_indalecio_web/ui/views/call_of_duty_view.dart';
import 'package:ramses_indalecio_web/ui/views/callofduty_mobile_view.dart';
import 'package:ramses_indalecio_web/ui/views/contacto_mobile_view.dart';
import 'package:ramses_indalecio_web/ui/views/contacto_view.dart';
import 'package:ramses_indalecio_web/ui/views/home_view.dart';
import 'package:ramses_indalecio_web/ui/views/home_view_mobile.dart';
import 'package:ramses_indalecio_web/ui/views/portafolio_mobile_view.dart';
import 'package:ramses_indalecio_web/ui/views/portafolio_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            (size.width > 850) ? const _HommeBody() : const _MobileBody(),
            const Positioned(right: 20, top: 20, child: CustomAppMenu())
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
      physics: const ClampingScrollPhysics(),
      controller: pageProvider.scrollcontroller,
      scrollDirection: Axis.vertical,
      children: const [
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

class _MobileBody extends StatelessWidget {
  const _MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      physics: const ClampingScrollPhysics(),
      controller: pageProvider.scrollcontroller,
      scrollDirection: Axis.vertical,
      children: const [
        HomeMoileView(),
        AboutMobileView(),
        PortafolioMobileView(),
        CallOfDutyMobileView(),
        ContactoMobileView()
      ],
    );
  }
}
