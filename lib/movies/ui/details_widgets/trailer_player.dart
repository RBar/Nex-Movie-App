import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_video_response.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';

class TrailerVideoPlayer extends StatefulWidget {
  final MovieVideoResponse videoResponse;
  const TrailerVideoPlayer({Key key, @required this.videoResponse})
      : super(key: key);

  @override
  _TrailerVideoPlayerState createState() => _TrailerVideoPlayerState();
}

class _TrailerVideoPlayerState extends State<TrailerVideoPlayer> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller =
        YoutubePlayerController(initialVideoId: widget.videoResponse.key);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              leading: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    ExtendedNavigator.of(context).pop();
                  }),
            ),
            body: Center(
              child: YoutubePlayer(controller: _controller),
            ),
          );
        }
        return Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: YoutubePlayer(controller: _controller),
          ),
        );
      },
    );
  }
}
