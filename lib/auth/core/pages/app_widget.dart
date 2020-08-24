import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_movie_app/auth/application/sign_in_bloc/signinform_bloc.dart';

import '../../../core/routes/router.gr.dart';
import '../../../injection.dart';
import '../../application/auth_bloc/auth_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCrackRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<SigninformBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Colors.white,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
          // inputDecorationTheme: const InputDecorationTheme(
          //   errorBorder: InputBorder.none,
          //   disabledBorder: InputBorder.none,
          //   enabledBorder: UnderlineInputBorder(
          //       borderSide: BorderSide(
          //     color: Colors.white,
          //   )),
          // ),
        ),
        builder: ExtendedNavigator(
          router: Router(),
        ),
      ),
    );
  }
}
