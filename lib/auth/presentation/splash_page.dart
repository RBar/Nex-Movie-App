import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

import '../../core/routes/router.gr.dart';
import '../application/auth_bloc/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) => Navigator.of(context).pushReplacementNamed(
                Routes.mainTab,
                arguments: MainTabArguments(selectedTab: 0)),
            unauthenticated: (_) =>
                Navigator.of(context).pushReplacementNamed(Routes.initialPage));
      },
      child: Scaffold(
        body: Center(
            child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(ColorPallete().purple1),
        )),
      ),
    );
  }
}
