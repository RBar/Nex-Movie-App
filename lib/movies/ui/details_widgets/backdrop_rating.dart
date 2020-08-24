import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nex_movie_app/core/errors/failures.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';
import 'package:nex_movie_app/injection.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_video_response.dart';
import 'package:nex_movie_app/movies/provider/get_video_response_provider.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';
import 'package:nex_movie_app/movies/ui/helpers/movies_images.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating(
      {Key key,
      @required this.size,
      @required this.movie,
      @required this.selectedTab})
      : super(key: key);

  final Size size;
  final Movie movie;
  final int selectedTab;

  @override
  Widget build(BuildContext context) {
    final GetVideoReponseProvider provider = getIt<GetVideoReponseProvider>();
    return Container(
      // 40% of our total height
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image:
                    NetworkImage(MovieImage().getPosterImg(movie.posterPath)),
              ),
            ),
          ),
          // Rating Box
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              // it will cover 90% of our total width
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 50,
                    color: const Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // SvgPicture.asset("assets/icons/star_fill.svg"),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: ColorPallete().starYellow,
                        ),
                        const SizedBox(height: kDefaultPadding / 4),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "${movie.voteAverage}/",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const TextSpan(text: "10\n"),
                              TextSpan(
                                text: movie.voteCount.toString(),
                                style: const TextStyle(color: kTextLightColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // Rate this
                    // Metascore
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: ColorPallete().purple1,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text(
                            movie.popularity.toString(),
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding / 4),
                        const Text(
                          "Popularity",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          // Back Button
          SafeArea(
              child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.chevronCircleLeft,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    if (selectedTab == 2) {
                      ExtendedNavigator.of(context).pushReplacementNamed(
                          Routes.mainTab,
                          arguments:
                              MainTabArguments(selectedTab: selectedTab));
                    } else {
                      ExtendedNavigator.of(context).pop();
                    }
                  })),
          FutureBuilder<Either<Failure, MovieVideoResponse>>(
              future: provider.getVideoResponse(movie.id),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              FontAwesomeIcons.playCircle,
                              size: 50.0,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              snapshot.data.fold(
                                  (l) => null,
                                  (r) => ExtendedNavigator.of(context)
                                      .pushNamed(Routes.trailerVideoPlayer,
                                          arguments:
                                              TrailerVideoPlayerArguments(
                                                  videoResponse: r)));
                            }),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    ),
                  );
                }
                return Center(
                    child: Icon(
                  FontAwesomeIcons.playCircle,
                  size: 50.0,
                  color: Colors.white,
                ));
              }),
        ],
      ),
    );
  }
}
