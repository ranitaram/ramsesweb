import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactoView extends StatelessWidget {
  const ContactoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.black,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 600,
              height: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              width: 600,
              height: double.infinity,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
