import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          width: size.width,
          decoration: _buildboxhome(),
        ),
        _Titulo(),
        _image_development(),
        custom_subtitle(),
        _CustomCardContainer()
      ],
    );
  }

  BoxDecoration _buildboxhome() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage('robot.png'),
        fit: BoxFit.cover,
      ),
    );
  }
}

class _CustomCardContainer extends StatelessWidget {
  const _CustomCardContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      left: 380,
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: SizedBox(
          height: 250,
          width: 400,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: Text(
                '¡OYE! MI NOMBRE ES RAMSES Y SOY UN PROGRAMADOR MÓVIL Y WEB, ME ENCARGO DE LA CREACIÓN, MANTENIMIENTO Y LA IMPLEMENTACION DEL CÓDIGO FUENTE QUE INTEGRAN LAS APLICACIONES NATIVAS PARA QUE SE EJECUTEN EN NUESTROS DISPOSITIVOS.',
                style: GoogleFonts.montserratAlternates(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen),
                textAlign: TextAlign.center,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class custom_subtitle extends StatelessWidget {
  const custom_subtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 80,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          'FULL-STACK DEVELOPER',
          style: GoogleFonts.montserratAlternates(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
      ),
    );
  }
}

class _image_development extends StatelessWidget {
  const _image_development({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 70,
      child: Container(
        //padding: EdgeInsets.only(top: 50, left: 50),
        width: 400,
        height: 400,

        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: 400,
              ),
              child: Image(image: AssetImage('development.png')),
            )
          ],
        ),
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  const _Titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 20,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          'ramsesindalecio.com',
          style: GoogleFonts.montserratAlternates(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white60),
        ),
      ),
    );
  }
}
