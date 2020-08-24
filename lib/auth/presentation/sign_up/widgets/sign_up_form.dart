import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/router.gr.dart';
import '../../../../movies/ui/helpers/color_pallete.dart';
import '../../../application/sign_in_bloc/signinform_bloc.dart';
import '../../shared/shared_widgets.dart';

class SignUpform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninformBloc, SigninformState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (failure) {
              failure.map(
                canceledByUser: (_) => SharedAuthWidgets()
                    .showErrorFlushbar('Login with google cancelled', context),
                serverError: (_) => SharedAuthWidgets()
                    .showErrorFlushbar('Server Error', context),
                emailAlreadyInUse: (_) => SharedAuthWidgets()
                    .showErrorFlushbar('Email Already in use', context),
                invalidEmailandPasswordCombination: (_) => SharedAuthWidgets()
                    .showErrorFlushbar(
                        'Invalid email and password combination', context),
              );
            },
            (_) {
              Navigator.of(context).pushReplacementNamed(Routes.mainTab,
                  arguments: MainTabArguments(selectedTab: 0));
            },
          ),
        );
      },
      builder: (context, state) {
        final Size size = MediaQuery.of(context).size;
        return Theme(
          data: Theme.of(context).copyWith(
              textTheme: Theme.of(context).textTheme.copyWith(
                    subtitle1: Theme.of(context).textTheme.bodyText1.apply(
                        color: const Color(0xff17334F),
                        decoration: TextDecoration.none),
                  )),
          child: Form(
            autovalidate: state.showErrorMessages,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                SharedAuthWidgets().logo(),
                SharedAuthWidgets().formTitle('Sign Up', size),
                const SizedBox(height: 10),
                SharedAuthWidgets().emailTextFormField(context),
                const SizedBox(height: 30),
                SharedAuthWidgets().passwordTextFormField(context),
                const SizedBox(height: 30),
                SharedAuthWidgets().button(
                    text: 'Sign Up',
                    buttoncolor: ColorPallete().purple1,
                    textcolor: Colors.white,
                    icon: false,
                    voidCallback: () => context.bloc<SigninformBloc>().add(
                          const SigninformEvent
                              .registerWithEmailAndPasswordPressed(),
                        )),
                const SizedBox(height: 20),
                const Divider(
                  color: Color(0xffaba9a9),
                  thickness: 1,
                  endIndent: 100,
                  indent: 100,
                ),
                const SizedBox(height: 20),
                SharedAuthWidgets().button(
                    text: 'Sign Up with Google',
                    buttoncolor: Colors.white,
                    textcolor: ColorPallete().initialGrey,
                    icon: true,
                    voidCallback: () => context
                        .bloc<SigninformBloc>()
                        .add(const SigninformEvent.signInWithGooglePressed())),
                const SizedBox(height: 80),
                Center(
                    child: SharedAuthWidgets().richText(
                        context: context,
                        voidCallback: () => ExtendedNavigator.of(context)
                            .pushReplacementNamed(Routes.signInPage),
                        normalText: 'Already have an account?',
                        coloredText: 'Sign In')),
                if (state.isSubmitting) ...[
                  const SizedBox(height: 8),
                  const LinearProgressIndicator(),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}

//  Expanded(
//                     child: FlatButton(
//                       onPressed: () {
//                         context.bloc<SigninformBloc>().add(
//                               const SigninformEvent
//                                   .registerWithEmailAndPasswordPressed(),
//                             );
//                       },
//                       child: const Text('REGISTER'),
//                     ),
//                   ),

//  Row(
//                   children: [
//                     Expanded(
//                       child: FlatButton(
//                         onPressed: () {
//                           context.bloc<SigninformBloc>().add(
//                                 const SigninformEvent
//                                     .signInWithEmailAndPasswordPressed(),
//                               );
//                         },
//                         child: const Text('SIGN IN'),
//                       ),
//                     ),
//                   ],
//                 ),
