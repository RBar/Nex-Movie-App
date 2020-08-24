import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nex_movie_app/auth/application/auth_bloc/auth_bloc.dart';

import 'package:nex_movie_app/injection.dart';
import 'package:nex_movie_app/movies/provider/favorites_movies/favoritesmovies_bloc.dart';
import 'package:nex_movie_app/movies/ui/home_page/user_dropdown.dart';

import 'helpers/color_pallete.dart';
import 'helpers/get_movies.dart';
import 'home_page/search_box.dart';
import 'home_page/trending_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GetMovies getMovies = GetMovies();
  GlobalKey<ScaffoldState> scaffoldKey;
  TabController _controller;

  @override
  void initState() {
    scaffoldKey = GlobalKey<ScaffoldState>();
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<FavoritesmoviesBloc>(),
        child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              elevation: 0,
              leading: const SizedBox(),
              actions: <Widget>[
                state.map(
                    initial: (_) => Container(),
                    authenticated: (state) =>
                        HomePageUserDropDown(user: state.user),
                    unauthenticated: (_) => Container()),
              ],
            ),
            body: Container(
              height: double.infinity,
              width: double.infinity,
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      state.map(
                          initial: (_) => Container(),
                          authenticated: (state) => SearchBoxWidget(
                                user: state.user,
                              ),
                          unauthenticated: (_) => Container()),
                      _tabbar(),
                      _tabBarView(),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Trending',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const TrendingListView()
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }

  TabBar _tabbar() {
    return TabBar(
      controller: _controller,
      labelPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      tabs: const [
        Tab(
          icon: Text('Populars'),
        ),
        Tab(
          icon: Text('Now Playing'),
        ),
        Tab(
          icon: Text('Top rated'),
        ),
      ],
      isScrollable: true,
      labelColor: ColorPallete().purple1,
      labelStyle: const TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
      unselectedLabelStyle:
          const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      unselectedLabelColor: const Color.fromRGBO(186, 202, 207, 1.0),
      indicatorColor: Colors.white,
    );
  }

  Widget _tabBarView() {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: size.width,
      child: TabBarView(controller: _controller, children: [
        getMovies.getPopularsPageViewWidget,
        getMovies.getNowPlayingPageViewWidget,
        getMovies.getTopRatedPageViewWidget,
      ]),
    );
  }
}
