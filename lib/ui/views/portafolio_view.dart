import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class PortafolioView extends StatelessWidget {
  const PortafolioView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5, 0.9],
                  colors: [Colors.orangeAccent, Colors.blue, Colors.blueGrey])),
        ),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Portafolio en GitHub',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_6HFXXE.json',
                        height: 200,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            const url = 'https://github.com/ranitaram';
                            if (await canLaunch(url)) {
                              await launch(url,
                                  forceSafariVC: true,
                                  forceWebView: true,
                                  enableJavaScript: true);
                            }
                          },
                          child: const Text(
                            'GitHub',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          )),
                    ],
                  )),
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
