import 'package:flutter/material.dart';
import 'package:nex_movie_app/movies/ui/home_page/page_view_widget.dart';
import '../../../injection.dart';
import '../../provider/now_playing_provider.dart';
import '../../provider/populars_provider.dart';
import '../../provider/top_rated_provider.dart';

class GetMovies {
  final _popularsProvider = getIt<PopularsProvider>();
  final _nowPlayingProvider = getIt<NowPlayingProvider>();
  final _topRatedProvider = getIt<TopRatedProvider>();
  Widget get getPopularsPageViewWidget {
    return PageViewWidget(
      stream: _popularsProvider.getPopularsStream,
      streamSink: _popularsProvider.getPopularsSink,
    );
  }

  Widget get getNowPlayingPageViewWidget {
    return PageViewWidget(
      stream: _nowPlayingProvider.getNowPlayingStream,
      streamSink: _nowPlayingProvider.getNowPlayingSink,
    );
  }

  Widget get getTopRatedPageViewWidget {
    return PageViewWidget(
      stream: _topRatedProvider.getTopRatedStream,
      streamSink: _topRatedProvider.getTopRatedSink,
    );
  }
}
