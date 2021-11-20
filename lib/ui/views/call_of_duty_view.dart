import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CallOfDutyView extends StatelessWidget {
  const CallOfDutyView({Key? key}) : super(key: key);

  get animatedTexts => null;

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
          left: 20,
          bottom: 20,
          child: Text(
            'ID DE ACTIVISION: EL PIPILA#7429644',
            style: TextStyle(color: Colors.blue, fontSize: 16),
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
            showFullscreenButton: !kIsWeb,
            color: 'transparent'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: 600,
      height: 600, //kIsWeb ? screenSize.height / 1.13 : screenSize.height,
      child: YoutubePlayerControllerProvider(
          controller: _controller,
          child: YoutubePlayerIFrame(
            controller: _controller,
          )),
    );
  }
}

// class AnimatedTextKit extends StatelessWidget {
//   const AnimatedTextKit({Key? key, animatedTexts}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //final titleTextStyle = Theme.of(context).textTheme.headline3;
//     return SizedBox(
//       //width: 500,
//       child: TextLiquidFill(
//         textAlign: TextAlign.center,
//         text: 'ID DE ACTIVISION: EL PIPILA#7429644',
//         waveColor: Colors.lightGreen,
//         boxBackgroundColor: Colors.black,
//         textStyle: GoogleFonts.montserratAlternates(
//             fontSize: 40, fontWeight: FontWeight.bold),
//         boxHeight: 250,
//       ),
//     );
//   }
// }
