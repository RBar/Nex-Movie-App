import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../movies/ui/helpers/color_pallete.dart';
import '../../application/sign_in_bloc/signinform_bloc.dart';
import '../shared/shared_widgets.dart';

class ForgotPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninformBloc, SigninformState>(
      listener: (context, state) {
        if (state.reset) {
          SharedAuthWidgets().showResetPasswordFlushbar(
              'A password reset link has been sent to ${state.emailAddress.value.fold((_) => '', (email) => email)}',
              context);
        }
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (failure) {
              failure.map(
                canceledByUser: (_) => null,
                serverError: (_) => SharedAuthWidgets()
                    .showErrorFlushbar('Server Error', context),
                emailAlreadyInUse: (_) => null,
                invalidEmailandPasswordCombination: (_) => null,
              );
            },
            (_) {},
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
                SharedAuthWidgets().formTitle('Reset Password', size),
                const SizedBox(height: 60),
                SharedAuthWidgets().emailTextFormField(context),
                const SizedBox(height: 30),
                SharedAuthWidgets().button(
                    text: 'Send Email',
                    buttoncolor: ColorPallete().purple1,
                    textcolor: Colors.white,
                    icon: false,
                    voidCallback: () => context.bloc<SigninformBloc>().add(
                          const SigninformEvent.resetPasswordWithEmail(),
                        )),
                const SizedBox(height: 80),
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
