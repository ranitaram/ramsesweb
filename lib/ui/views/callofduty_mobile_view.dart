import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CallOfDutyMobileView extends StatelessWidget {
  const CallOfDutyMobileView({Key? key}) : super(key: key);

  String? get youtubeURL => null;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            color: Colors.black,
            child: Center(child: CustomYotubePlayer(youtubeURL))),
        const Positioned(
          left: 5,
          bottom: 10,
          child: Text(
            'ID DE ACTIVISION: EL PIPILA#7429644',
            style: TextStyle(color: Colors.blue, fontSize: 12),
          ),
        )
      ],
    );

    // Stack(
    //   alignment: AlignmentDirectional.center,
    //   children: [
    //     CustomImageWarzone(size: size),
    //     AnimatedTextKit(animatedTexts: animatedTexts),
    //   ],
    // );
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

class CustomYotubePlayer extends StatefulWidget {
  final String? youtubeURL;
  CustomYotubePlayer(
    this.youtubeURL,
  );

  @override
  _CustomYotubePlayerState createState() => _CustomYotubePlayerState();
}

class _CustomYotubePlayerState extends State<CustomYotubePlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: '0E44DClsX5Q',
        //YoutubePlayerController.convertUrlToId(widget.youtubeURL!)!,
        params: const YoutubePlayerParams(
            desktopMode: true,
            loop: true,
            showControls: true,
            color: 'transparent'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: 150,
      height: 250, //kIsWeb ? screenSize.height / 1.13 : screenSize.height,
      child: YoutubePlayerControllerProvider(
          controller: _controller,
          child: YoutubePlayerIFrame(
            controller: _controller,
          )),
    );
  }
}
