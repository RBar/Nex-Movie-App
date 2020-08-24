import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/router.gr.dart';
import '../../../../movies/ui/helpers/color_pallete.dart';
import '../../../application/sign_in_bloc/signinform_bloc.dart';
import '../../shared/shared_widgets.dart';

class Signinform extends StatelessWidget {
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
                SharedAuthWidgets().formTitle('Sign In', size),
                const SizedBox(height: 10),
                SharedAuthWidgets().emailTextFormField(context),
                const SizedBox(height: 30),
                SharedAuthWidgets().passwordTextFormField(context),
                const SizedBox(height: 30),
                SharedAuthWidgets().button(
                    text: 'Sign In',
                    buttoncolor: ColorPallete().purple1,
                    textcolor: Colors.white,
                    icon: false,
                    voidCallback: () => context.bloc<SigninformBloc>().add(
                          const SigninformEvent
                              .signInWithEmailAndPasswordPressed(),
                        )),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.forgotPasswordPage);
                  },
                  child: SizedBox(
                    width: size.width,
                    child: const Text(
                      'Forgot your password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Color(0xffaba9a9),
                  thickness: 1,
                  endIndent: 100,
                  indent: 100,
                ),
                const SizedBox(height: 20),
                SharedAuthWidgets().button(
                    text: 'Sign In with Google',
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
                      voidCallback: () =>
                          Navigator.of(context).pushNamed(Routes.signUpPage),
                      normalText: "Don't have an account?",
                      coloredText: 'Sign Up'),
                ),
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

// Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 35.0),
//   child: Material(
//     elevation: 1,
//     shadowColor: ColorPallete().purple1.withOpacity(0.5),
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(40.0)),
//     child: TextFormField(
//       autocorrect: false,
//       keyboardType: TextInputType.emailAddress,
//       keyboardAppearance: Brightness.light,
//       textInputAction: TextInputAction.next,
//       textAlign: TextAlign.center,
//       decoration: InputDecoration(
//           isDense: true,
//           suffixStyle: TextStyle(color: Colors.red),
//           hintText: 'example@example.com',
//           prefixIcon: Icon(
//             FontAwesomeIcons.at,
//             color: ColorPallete().purple1,
//           ),
//           hintStyle: const TextStyle(
//             fontSize: 14,
//             color: Color(0xffa8a8a8),
//           ),
//           border: const OutlineInputBorder(
//               borderSide: BorderSide.none)),
//       onChanged: (value) => context
//           .bloc<SigninformBloc>()
//           .add(SigninformEvent.emailChanged(value)),
//       validator: (_) => context
//           .bloc<SigninformBloc>()
//           .state
//           .emailAddress
//           .value
//           .fold(
//             (f) => f.maybeMap(
//               invalidEmail: (_) => 'Invalid Email',
//               orElse: () => null,
//             ),
//             (_) => null,
//           ),
//     ),
//   ),
// ),

// Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 35.0),
//                   child: Material(
//                     elevation: 1,
//                     shadowColor: ColorPallete().purple1.withOpacity(0.5),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(40.0)),
//                     child: TextFormField(
//                       textAlign: TextAlign.center,
//                       keyboardAppearance: Brightness.light,
//                       textInputAction: TextInputAction.send,
//                       decoration: InputDecoration(
//                           hintText: '*****************',
//                           isDense: true,
//                           prefixIcon: Icon(
//                             FontAwesomeIcons.lock,
//                             color: ColorPallete().purple1,
//                           ),
//                           border: const OutlineInputBorder(
//                               borderSide: BorderSide.none)),
//                       autocorrect: false,
//                       obscureText: true,
//                       onChanged: (value) => context
//                           .bloc<SigninformBloc>()
//                           .add(SigninformEvent.passwordChanged(value)),
//                       validator: (_) => context
//                           .bloc<SigninformBloc>()
//                           .state
//                           .password
//                           .value
//                           .fold(
//                             (f) => f.maybeMap(
//                               shortPassword: (_) => 'Short Password',
//                               orElse: () => null,
//                             ),
//                             (_) => null,
//                           ),
//                     ),
//                   ),
//                 ),
