import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:ramses_indalecio_web/buttons/custom_outlined_button.dart';
import 'package:ramses_indalecio_web/buttons/link_text.dart';

class ContactoMobileView extends StatelessWidget {
  const ContactoMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        gradientContact(),
        Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  //width: 300,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets2.lottiefiles.com/packages/lf20_MUGYrv.json',
                        height: 80,
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
                  // width: 300,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets9.lottiefiles.com/packages/lf20_bgHQHE.json',
                        height: 80,
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
                  // width: 300,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_YXH4Tp.json',
                        height: 80,
                      ),
                      LinkText(
                        text: 'Email',
                        onpressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              Container(
                //alignment: Alignment.center,
                // width: (size.width > 850) ? size.height * 0.07 : null,
                width: size.width,
                height: 120,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: CustomOutlinedButton(
                            onPressed: () {}, text: 'Politicas de Privacidad')),
                    Expanded(
                        child: CustomOutlinedButton(
                            onPressed: () {}, text: 'Políticas de Cookies')),
                    Expanded(
                        child: CustomOutlinedButton(
                            onPressed: () {},
                            text: 'Politicas de Privacidad para Apps Móviles')),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
