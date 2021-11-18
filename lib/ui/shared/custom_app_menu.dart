import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:ramses_indalecio_web/providers/page_provider.dart';
import 'package:ramses_indalecio_web/ui/shared/custom_menu_item.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isOpen) {
            controller.reverse();
          } else {
            controller.forward();
          }

          setState(() {
            isOpen = !isOpen; // significa que isOpen va a ser lo contrario
          });
        },
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: 150,
            height: isOpen ? 308 : 50, //si esta abierto, en 300 si no, en 50
            color: Colors.black,
            child: Column(
              children: [
                _Menutitle(isOpen: isOpen, controller: controller),
                if (isOpen) ...[
                  CustomMenuItem(
                      delay: 0,
                      text: 'Home',
                      onPressed: () => pageProvider.goTo(0)),
                  CustomMenuItem(
                      delay: 40,
                      text: 'About',
                      onPressed: () => pageProvider.goTo(1)),
                  CustomMenuItem(
                      delay: 80,
                      text: 'Portafolio',
                      onPressed: () => pageProvider.goTo(2)),
                  CustomMenuItem(
                      delay: 120,
                      text: 'Call of duty',
                      onPressed: () => pageProvider.goTo(3)),
                  CustomMenuItem(
                      delay: 160,
                      text: 'Contacto',
                      onPressed: () => pageProvider.goTo(4)),
                  const SizedBox(
                    height: 8,
                  )
                ]
              ],
            )),
      ),
    );
  }
}

class _Menutitle extends StatelessWidget {
  const _Menutitle({
    Key? key,
    required this.isOpen,
    required this.controller,
  }) : super(key: key);

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: isOpen ? 45 : 0,
          ),
          Text('Menu',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 18,
              )),
          const Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
