import 'package:flutter/material.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(ColorPallete().purple1)),
      ),
    );
  }
}
