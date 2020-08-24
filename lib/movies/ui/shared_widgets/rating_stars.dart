import 'package:flutter/material.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';

class RatingStars extends StatelessWidget {
  final double stars;
  const RatingStars({Key key, @required this.stars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _staricons();
  }

  Widget _staricons() {
    int emptystar = 5;
    final List<Widget> widlist = [];
    final int intstar = (stars / 2).floor(); //3 //stars 3.5
    bool halfstar;
    emptystar = emptystar - intstar;
    halfstar = stars - intstar > 0;
    final Widget star = Icon(
      Icons.star,
      color: ColorPallete().starYellow,
      size: 25.0,
    );
    final Widget starout = Icon(
      Icons.star_border,
      color: ColorPallete().starYellow,
      size: 25.0,
    );
    final Widget starhalf = Icon(
      Icons.star_half,
      color: ColorPallete().starYellow,
      size: 25.0,
    );
    switch (intstar) {
      // AGREGO LA STAR LLENA
      case 1:
        {
          widlist.add(star);
          break;
        }
      case 2:
        {
          widlist.add(star);
          widlist.add(star);
          break;
        }
      case 3:
        {
          widlist.add(star);
          widlist.add(star);
          widlist.add(star);
          break;
        }
      case 4:
        {
          widlist.add(star);
          widlist.add(star);
          widlist.add(star);
          widlist.add(star);
          break;
        }
      case 5:
        {
          widlist.add(star);
          widlist.add(star);
          widlist.add(star);
          widlist.add(star);
          widlist.add(star);
          break;
        }
    }
    if (halfstar) {
      emptystar--;
      widlist.add(starhalf);
    }
    switch (emptystar) {
      //AGREGO LA EMPTY STAR
      case 1:
        {
          widlist.add(starout);
          break;
        }
      case 2:
        {
          widlist.add(starout);
          widlist.add(starout);
          break;
        }
      case 3:
        {
          widlist.add(starout);
          widlist.add(starout);
          widlist.add(starout);
          break;
        }
      case 4:
        {
          widlist.add(starout);
          widlist.add(starout);
          widlist.add(starout);
          widlist.add(starout);
          break;
        }
      case 5:
        {
          widlist.add(starout);
          widlist.add(starout);
          widlist.add(starout);
          widlist.add(starout);
          widlist.add(starout);
          break;
        }
    }
    return Row(
      children: widlist,
    );
  }
}
