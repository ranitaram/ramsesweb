import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobileView extends StatelessWidget {
  const AboutMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Container(
            color: Colors.black,
            child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'agne',
                    color: Colors.lightGreen),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('¡ HOLA QUE BUENO VERTE DE NUEVO !',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                    TypewriterAnimatedText(
                        'DEJAME CONTARTE QUE SIEMPRE  HE SIDO ALGUIEN QUE TIENE TANTO UN LADO CREATIVO COMO LÓGICO',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                    TypewriterAnimatedText(
                        'CUANDO DESCUBRI LA PROGRAMACIÓN ME DI CUENTA QUE ENCAJARÍA PERFECTAMENTE',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                    TypewriterAnimatedText(
                        'ME ESPECIALIZO EN LA CREACIÓN DE SITIOS WEB Y APLICACIONES MÓVILES PARA PARTICULARES Y PEQUEÑAS EMPRESAS.',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                    TypewriterAnimatedText(
                        'NO DEBERÍA TENER QUE CONFORMARSE CON SOLUCIONES BARATAS O PLANTILLAS GENÉRICAS. OFREZCO DISEÑOS PERSONALIZADOS A PRECIOS ASEQUIBLES. ',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                    TypewriterAnimatedText(
                        'CON FRECUENCIA, SU SITIO WEB ES LA PRIMERA IMPRESIÓN QUE RECIBEN SUS CLIENTES, ASÍ QUE ASEGÚRESE DE QUE SEA BUENA.',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                    TypewriterAnimatedText(
                        'DADO QUE MI TIEMPO SE DIVIDE ENTRE ALGUNAS COSAS DIFERENTES, NO PUEDO ASUMIR TODOS LOS PROYECTOS QUE ME GUSTARÍA, PERO SIEMPRE BUSCO UN TRABAJO DIVERTIDO ',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                    TypewriterAnimatedText(
                        'LA FORMA DE CONTACTARME LAS ENCONTRARA  MÁS ABAJO. NOS VEMOS PRONTO.',
                        textAlign: TextAlign.center,
                        speed: Duration(milliseconds: 100),
                        textStyle: GoogleFonts.montserratAlternates(),
                        cursor: '_'),
                  ],
                  totalRepeatCount: 1,
                ))),
      ),
    );
  }
}
