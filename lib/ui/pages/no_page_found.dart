import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFound extends StatelessWidget {
  const NoPageFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '404 - Pagína no encontrada',
          style: GoogleFonts.montserratAlternates(
              fontSize: 55, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
