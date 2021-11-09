import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CallOfDutyView extends StatelessWidget {
  const CallOfDutyView({Key? key}) : super(key: key);

  get animatedTexts => null;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CustomImageWarzone(size: size),
        AnimatedTextKit(animatedTexts: animatedTexts),
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
      width: size.width,
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
      width: 500,
      child: TextLiquidFill(
        text: 'ID DE ACTIVISION: EL PIPILA#7429644',
        waveColor: Colors.lightGreen,
        boxBackgroundColor: Colors.black,
        textStyle: GoogleFonts.montserratAlternates(
            fontSize: 50, fontWeight: FontWeight.bold),
        boxHeight: 260,
      ),
    );
  }
}
