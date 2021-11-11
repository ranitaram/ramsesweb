import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:ramses_indalecio_web/buttons/link_text.dart';

class ContactoView extends StatelessWidget {
  const ContactoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        gradientContact(),
        Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: 300,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets2.lottiefiles.com/packages/lf20_MUGYrv.json',
                        height: 100,
                      ),
                      LinkText(
                        text: 'Twitter',
                        onpressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 300,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets9.lottiefiles.com/packages/lf20_bgHQHE.json',
                        height: 100,
                      ),
                      LinkText(
                        text: 'Facebook',
                        onpressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 300,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_YXH4Tp.json',
                        height: 100,
                      ),
                      LinkText(
                        text: 'Email',
                        onpressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: size.width,
          height: 50,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinkText(
                text: 'Políticas de Privacidad',
                onpressed: () {},
              ),
              LinkText(
                text: 'Políticas de Cookies',
                onpressed: () {},
              ),
              LinkText(
                text: 'Políticas de Privacidad para Aplicaciones Movíles',
                onpressed: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}

class gradientContact extends StatelessWidget {
  const gradientContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.5, 0.9],
              colors: [Colors.blueGrey, Colors.grey, Colors.black87])),
    );
  }
}
