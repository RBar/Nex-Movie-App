import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nex_movie_app/movies/ui/genre_page.dart';

import '../../auth/application/auth_bloc/auth_bloc.dart';
import '../../injection.dart';
import '../provider/favorites_movies/favoritesmovies_bloc.dart';
import 'favorite_page.dart';
import 'helpers/color_pallete.dart';
import 'home_page.dart';

class MainTab extends StatefulWidget {
  final int selectedTab;
  const MainTab({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.map(
            initial: (value) => Container(),
            authenticated: (state) => BlocProvider(
                  create: (context) => getIt<FavoritesmoviesBloc>(),
                  child: Scaffold(
                    body: DefaultTabController(
                      length: 3,
                      initialIndex: widget.selectedTab,
                      child: Scaffold(
                        body: const TabBarView(
                          children: [HomePage(), GenrePage(), FavoritesPage()],
                        ),
                        bottomNavigationBar: TabBar(
                          labelPadding: const EdgeInsets.symmetric(),
                          tabs: const [
                            Tab(
                              icon: Icon(FontAwesomeIcons.film),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.solidFileVideo),
                            ),
                            Tab(
                              icon: Icon(FontAwesomeIcons.solidHeart),
                            ),
                          ],
                          labelColor: ColorPallete().purple1,
                          unselectedLabelColor:
                              const Color.fromRGBO(186, 202, 207, 1.0),
                          indicatorWeight: 3.0,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.white,
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
            unauthenticated: (state) {
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCrackRequested());
              return Container();
            });
      },
    );
  }
}
