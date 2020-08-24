import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../injection.dart';
import '../../../movies/ui/helpers/color_pallete.dart';
import '../../application/sign_in_bloc/signinform_bloc.dart';
import 'forgot_password_form.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode focus = FocusScope.of(context);
        if (!focus.hasPrimaryFocus) {
          focus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(240, 240, 240, 1.0),
          leading: IconButton(
              icon: Icon(
                FontAwesomeIcons.chevronLeft,
                color: ColorPallete().purple1,
              ),
              onPressed: () => Navigator.of(context).pop()),
        ),
        body: BlocProvider(
          create: (context) => getIt<SigninformBloc>(),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromRGBO(240, 240, 240, 1.0),
              child: SafeArea(child: ForgotPasswordForm())),
        ),
      ),
    );
  }
}
