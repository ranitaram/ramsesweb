import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:ramses_indalecio_web/buttons/custom_outlined_button.dart';
import 'package:ramses_indalecio_web/buttons/link_text.dart';
import 'package:url_launcher/url_launcher.dart';

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
                        height: 100,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            const url = 'https://twitter.com/IndalecioRamses';
                            if (await canLaunch(url)) {
                              await launch(url,
                                  forceSafariVC: true,
                                  forceWebView: true,
                                  enableJavaScript: true);
                            }
                          },
                          child: const Text(
                            'Twitter',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ))
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
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            const url = 'https://www.facebook.com/ramsesiv';
                            if (await canLaunch(url)) {
                              await launch(url,
                                  forceSafariVC: true,
                                  forceWebView: true,
                                  enableJavaScript: true);
                            }
                          },
                          child: const Text(
                            'Facebook',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ))
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
                        height: 100,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            const toEmail = 'ramses_888@hotmail.com';
                            const subjetc = 'New Post';
                            const message =
                                'Hola amig@!\n\nQue bueno que estás aquí, si tienes alguna pregunta no dudes en mandarme un correo';
                            final url =
                                'mailto:$toEmail?subject=${Uri.encodeFull(subjetc)}&body=${Uri.encodeFull(message)}';
                            if (await canLaunch(url)) {
                              await launch(url);
                            }
                          },
                          child: const Text(
                            'Email',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ))
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
