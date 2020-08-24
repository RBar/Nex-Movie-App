import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/movies/ui/home_page/search_delegate.dart';
import '../helpers/color_pallete.dart';

//* Widget for the Homescreen to show a Search Box

class SearchBoxWidget extends StatelessWidget {
  final User user;
  const SearchBoxWidget({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showSearch(context: context, delegate: DataSearch(user));
      },
      child: Container(
        margin: const EdgeInsets.all(20.0),
        width: size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.20),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                  flex: 10,
                  child: Text(
                    'Tap here for search',
                    style: TextStyle(
                        color: ColorPallete().searchGrey,
                        fontSize: (size.width > 500) ? 16 : 14.0,
                        fontWeight: FontWeight.w500),
                  )),
              Expanded(
                  flex: 2,
                  child: Icon(
                    FontAwesomeIcons.search,
                    color: ColorPallete().purple1,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
