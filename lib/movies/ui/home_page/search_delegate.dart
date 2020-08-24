import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';
import 'package:nex_movie_app/movies/ui/shared_widgets/loading_display.dart';
import '../../../core/errors/failures.dart';
import '../../../injection.dart';
import '../../domain/entities/movie_entity.dart';
import '../../provider/search_provider.dart';
import '../helpers/movies_images.dart';

//* Widget to search cities

class DataSearch extends SearchDelegate {
  final User user;
  String seleccion = '';
  final SearchProvider provider = getIt<SearchProvider>();

  DataSearch(this.user);
  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        hintStyle: TextStyle(color: Colors.white70),
      ),
      textTheme: theme.textTheme.copyWith(
        headline1: TextStyle(color: Colors.white),
        headline6: TextStyle(color: Colors.white),
      ),
      primaryColor: const Color(0xff5B01B0),
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
      primaryColorBrightness: Brightness.light,
    );
  }

  @override
  String get searchFieldLabel => 'Type here for search';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return _searchSuggestionsAndResultsWidget(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _searchSuggestionsAndResultsWidget(context);
  }

  Widget _searchSuggestionsAndResultsWidget(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (query.isEmpty) {
      return Container();
    } else {
      provider.getSearchSink(page: 1, query: query);
      return _searchSuggestionsAndResults(size);
    }
  }

  Widget _searchSuggestionsAndResults(Size size) {
    return StreamBuilder<dartz.Either<Failure, List<Movie>>>(
        stream: provider.getSearchStream,
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data.fold(
                (l) => _failureWidget(size),
                (movielist) => ListView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      itemCount: movielist.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            ExtendedNavigator.of(context).pushNamed(
                                Routes.movieDetail,
                                arguments: MovieDetailArguments(
                                    user: user,
                                    movie: movielist[index],
                                    selectedTab: 4));
                          },
                          child: _listviewTile(movielist[index]),
                        );
                      },
                    ));
          }
          return const LoadingWidget();
        });
  }

  Widget _failureWidget(Size size) {
    return Container(
      width: size.width,
      height: size.height * 0.7,
      child: Center(
        child: Text(
          'Something has happened',
          style: TextStyle(
              fontSize: 20,
              color: Colors.grey.withOpacity(0.8),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _listviewTile(Movie movie) {
    return ListTile(
      leading: FadeInImage(
        placeholder: const AssetImage('assets/no-image.jpg'),
        image: NetworkImage(MovieImage().getPosterImg(movie.posterPath)),
        fit: BoxFit.cover,
      ),
      title: Text(
        movie.title,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}
