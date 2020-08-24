import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:nex_movie_app/core/errors/failures.dart';
import 'package:nex_movie_app/injection.dart';
import 'package:nex_movie_app/movies/domain/entities/cast_entity.dart';
import 'package:nex_movie_app/movies/domain/entities/movie_entity.dart';
import 'package:nex_movie_app/movies/provider/get_cast_provider.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';
import 'package:nex_movie_app/movies/ui/shared_widgets/loading_display.dart';

import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final Movie movie;
  const CastAndCrew({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final castProvider = getIt<GetCastProvider>();
    return FutureBuilder<dartz.Either<Failure, CastResponse>>(
        future: castProvider.getCast(movie.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data.fold(
                (l) => const Image(
                    image: AssetImage('assets/no-image.jpg')) //TODO  CHANGE
                ,
                (castResponse) => Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Cast & Crew",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(height: kDefaultPadding),
                          SizedBox(
                            height: 160,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: castResponse.castList.length,
                              itemBuilder: (context, index) =>
                                  CastCard(cast: castResponse.castList[index]),
                            ),
                          )
                        ],
                      ),
                    ));
          }
          return const LoadingWidget();
        });
  }
}
