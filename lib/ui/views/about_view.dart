import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: FittedBox(
        fit: BoxFit.contain, // la fuente se ajusta al tamaño de la pantalla
        child: Text(
          'About',
          style: GoogleFonts.montserratAlternates(
              fontSize: 80, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
