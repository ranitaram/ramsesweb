import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CallOfDutyView extends StatelessWidget {
  const CallOfDutyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [CustomImageWarzone(size: size)],
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
