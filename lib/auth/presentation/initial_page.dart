import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/routes/router.gr.dart';
import '../../movies/ui/helpers/color_pallete.dart';
import '../application/sign_in_bloc/signinform_bloc.dart';
import 'shared/shared_widgets.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final initialPageWidgets = SharedAuthWidgets();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromRGBO(242, 242, 242, 1),
          child: SafeArea(
              child: BlocListener<SigninformBloc, SigninformState>(
            listener: (context, state) {
              state.authFailureOrSuccess.fold(
                  () {},
                  (either) => either.fold(
                          (failure) => failure.map(
                              canceledByUser: (_) =>
                                  initialPageWidgets.showErrorFlushbar(
                                      'Login with google cancelled', context),
                              serverError: (_) => initialPageWidgets
                                  .showErrorFlushbar('Server Error', context),
                              emailAlreadyInUse: (_) {},
                              invalidEmailandPasswordCombination: (_) {}), (_) {
                        Navigator.of(context).pushReplacementNamed(
                            Routes.mainTab,
                            arguments: MainTabArguments(selectedTab: 0));
                      }));
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.2,
                ),
                const Image(image: AssetImage('assets/logo2.png')),
                SizedBox(
                  height: size.height * 0.05,
                ),
                initialPageWidgets.button(
                    text: 'Sign Up with Email',
                    buttoncolor: ColorPallete().purple1,
                    textcolor: Colors.white,
                    icon: false,
                    voidCallback: () =>
                        Navigator.of(context).pushNamed(Routes.signUpPage)),
                SizedBox(
                  height: size.height * 0.025,
                ),
                const Divider(
                  color: Color(0xffaba9a9),
                  thickness: 1,
                  endIndent: 100,
                  indent: 100,
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                initialPageWidgets.button(
                    text: 'Sign Up with Google',
                    buttoncolor: Colors.white,
                    textcolor: ColorPallete().initialGrey,
                    icon: true,
                    voidCallback: () => context
                        .bloc<SigninformBloc>()
                        .add(const SigninformEvent.signInWithGooglePressed())),
                SizedBox(
                  height: size.height * 0.1,
                ),
                initialPageWidgets.richText(
                    context: context,
                    voidCallback: () =>
                        Navigator.of(context).pushNamed(Routes.signInPage),
                    normalText: 'Already have an account?',
                    coloredText: 'Sign In')
              ],
            ),
          ))),
    );
  }
}
