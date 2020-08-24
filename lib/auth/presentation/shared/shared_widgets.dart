import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nex_movie_app/auth/application/sign_in_bloc/signinform_bloc.dart';

import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SharedAuthWidgets {
  void showErrorFlushbar(String message, BuildContext context) {
    Flushbar(
      margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
      flushbarPosition: FlushbarPosition.BOTTOM,
      duration: const Duration(milliseconds: 3000),
      padding: const EdgeInsets.all(10),
      borderRadius: 10,
      leftBarIndicatorColor: Colors.red, //TODO CHANGE
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      icon: const Icon(FontAwesomeIcons.exclamationTriangle),
      backgroundColor: Colors.white,
      boxShadows: const [
        BoxShadow(color: Colors.black45, offset: Offset(3, 3), blurRadius: 3)
      ],
      titleText: Text('Ups Something has happened',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      messageText: Text(
        message,
        style: const TextStyle(color: Colors.black),
      ),
    ).show(context);
  }

  void showResetPasswordFlushbar(String message, BuildContext context) {
    Flushbar(
      margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
      flushbarPosition: FlushbarPosition.BOTTOM,
      duration: const Duration(milliseconds: 3000),
      padding: const EdgeInsets.all(10),
      borderRadius: 10,
      leftBarIndicatorColor: const Color(0xffc28e00),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      icon: const Icon(
        FontAwesomeIcons.info,
        color: Color(0xffc28e00),
      ),
      backgroundColor: Colors.white,
      boxShadows: const [
        BoxShadow(color: Colors.black45, offset: Offset(3, 3), blurRadius: 3)
      ],
      titleText: Text('Reset Password',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      messageText: Text(
        message,
        style: const TextStyle(color: Colors.black),
      ),
    ).show(context);
  }

  Widget logo() {
    return const Image(image: AssetImage('assets/logo2.png'));
  }

  Widget formTitle(String title, Size size) {
    return SizedBox(
      width: size.width,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w900),
      ),
    );
  }

  Widget emailTextFormField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Material(
        elevation: 1,
        shadowColor: ColorPallete().purple1.withOpacity(0.5),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          keyboardAppearance: Brightness.light,
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              isDense: true,
              suffixStyle: TextStyle(color: Colors.red),
              hintText: 'example@example.com',
              prefixIcon: Icon(
                FontAwesomeIcons.at,
                color: ColorPallete().purple1,
              ),
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Color(0xffa8a8a8),
              ),
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
          onChanged: (value) => context
              .bloc<SigninformBloc>()
              .add(SigninformEvent.emailChanged(value)),
          validator: (_) =>
              context.bloc<SigninformBloc>().state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    );
  }

  Widget passwordTextFormField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Material(
        elevation: 1,
        shadowColor: ColorPallete().purple1.withOpacity(0.5),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: TextFormField(
          textAlign: TextAlign.center,
          keyboardAppearance: Brightness.light,
          textInputAction: TextInputAction.send,
          decoration: InputDecoration(
              hintText: '*****************',
              isDense: true,
              prefixIcon: Icon(
                FontAwesomeIcons.lock,
                color: ColorPallete().purple1,
              ),
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
          autocorrect: false,
          obscureText: true,
          onChanged: (value) => context
              .bloc<SigninformBloc>()
              .add(SigninformEvent.passwordChanged(value)),
          validator: (_) =>
              context.bloc<SigninformBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'Short Password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    );
  }

  Widget button({
    @required String text,
    @required Color buttoncolor,
    @required Color textcolor,
    @required bool icon,
    @required VoidCallback voidCallback,
  }) {
    return _Button(
        text: text,
        buttoncolor: buttoncolor,
        textcolor: textcolor,
        icon: icon,
        voidCallback: voidCallback);
  }

  Widget richText(
      {@required BuildContext context,
      @required VoidCallback voidCallback,
      @required String normalText,
      @required String coloredText}) {
    return InkWell(
      onTap: voidCallback,
      child: RichText(
        text: TextSpan(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
            children: [
              TextSpan(
                text: normalText,
              ),
              TextSpan(
                text: coloredText,
                style: TextStyle(
                  color: ColorPallete().purple1,
                  fontWeight: FontWeight.w900,
                  fontSize: 14.0,
                ),
              ),
            ]),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String text;
  final Color buttoncolor;
  final Color textcolor;
  final VoidCallback voidCallback;
  final bool icon;
  const _Button(
      {Key key,
      @required this.text,
      @required this.buttoncolor,
      @required this.textcolor,
      @required this.voidCallback,
      @required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: CupertinoButton(
        onPressed: voidCallback,
        minSize: 30,
        padding: EdgeInsets.zero,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: buttoncolor,
              borderRadius: BorderRadius.circular(40.0),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 5)
              ]),
          child: Row(
            children: [
              if (icon)
                const SizedBox(
                  height: 25,
                  width: 25,
                  child: Image(
                    image: AssetImage(
                      'assets/google.svg.webp',
                    ),
                  ),
                ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: textcolor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                width: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
