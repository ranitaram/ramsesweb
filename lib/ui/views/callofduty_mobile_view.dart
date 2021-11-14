import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CallOfDutyMobileView extends StatelessWidget {
  const CallOfDutyMobileView({Key? key}) : super(key: key);

  get animatedTexts => null;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
          child: Container(
            child: Image(
              image: AssetImage('warzone.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            color: Colors.black,
            alignment: Alignment.bottomCenter,
            width: size.width,
            child: AnimatedTextKit(animatedTexts: animatedTexts)),
      ],
    );
  }
}

class CustomImageWarzone extends StatelessWidget {
  const CustomImageWarzone({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('warzone.png'), fit: BoxFit.cover)),
    );
  }
}

class AnimatedTextKit extends StatelessWidget {
  const AnimatedTextKit({Key? key, animatedTexts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final titleTextStyle = Theme.of(context).textTheme.headline3;
    return SizedBox(
      //width: 500,
      child: TextLiquidFill(
        textAlign: TextAlign.center,
        text: 'ID DE ACTIVISION: EL PIPILA#7429644',
        waveColor: Colors.lightGreen,
        boxBackgroundColor: Colors.black,
        textStyle: GoogleFonts.montserratAlternates(
            fontSize: 35, fontWeight: FontWeight.bold),
        boxHeight: 240,
        boxWidth: 400,
      ),
    );
  }
}
