import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LinkText extends StatefulWidget {
  final String text;
  final Function? onpressed;

  const LinkText({Key? key, required this.text, this.onpressed})
      : super(key: key);

  @override
  State<LinkText> createState() => _LinkTextState();
}

class _LinkTextState extends State<LinkText> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onpressed != null) widget.onpressed!();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(widget.text,
              style: GoogleFonts.montserratAlternates(
                  fontSize: 20,
                  color: Colors.white,
                  decoration: isHover
                      ? TextDecoration.underline
                      : TextDecoration.none)),
        ),
      ),
    );
  }
}
