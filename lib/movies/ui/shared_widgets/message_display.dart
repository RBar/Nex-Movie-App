import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';

class MessageDisplay extends StatefulWidget {
  final String message;
  final int selectedpage;
  const MessageDisplay({
    Key key,
    @required this.message,
    @required this.selectedpage,
  }) : super(key: key);

  @override
  _MessageDisplayState createState() => _MessageDisplayState();
}

class _MessageDisplayState extends State<MessageDisplay> {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textstyle = GoogleFonts.openSans(
        color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.w500);
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Icon(
                FontAwesomeIcons.redoAlt,
                size: 60.0,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                'Verifica tu conexion',
                style: _textstyle,
              ),
              FlatButton(
                  highlightColor: const Color.fromRGBO(200, 213, 222, 1.0),
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  disabledColor: Colors.transparent,
                  textColor: Colors.grey,
                  onPressed: () {
                    if (widget.selectedpage >= 3) {
                      ExtendedNavigator.of(context).pushReplacementNamed(
                        Routes.movieDetail,
                      );
                    } else {
                      ExtendedNavigator.of(context).pushReplacementNamed(
                          Routes.mainTab,
                          arguments: MainTabArguments(
                              selectedTab: widget.selectedpage));
                    }
                  },
                  child: Text(
                    'Reintentar',
                    style: _textstyle,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
