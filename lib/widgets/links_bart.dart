import 'package:flutter/material.dart';
import 'package:ramses_indalecio_web/buttons/link_text.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: Colors.black,
        height: size.height,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            LinkText(
              text: 'Política de privacidad',
              onpressed: () => print('hola'),
            ),
            LinkText(text: 'Política de Cookies'),
            LinkText(text: 'Política de Privacidad para aplicaciones movíles'),
          ],
        ));
  }
}
