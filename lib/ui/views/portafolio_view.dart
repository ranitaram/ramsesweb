import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:ramses_indalecio_web/buttons/link_text.dart';

class PortafolioView extends StatelessWidget {
  const PortafolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomGradient(),
        Container(
          width: size.width,
          height: size.height,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: 600,
                  height: double.infinity,
                  child: Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_ofa3xwo7.json',
                    height: 100,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 600,
                height: double.infinity,
                child: LinkText(
                  text: 'Proyectos en GitHub',
                  onpressed: () {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CustomGradient extends StatelessWidget {
  const CustomGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.6, 0.8],
              colors: [Colors.teal, Colors.blueAccent, Colors.purpleAccent])),
    );
  }
}
