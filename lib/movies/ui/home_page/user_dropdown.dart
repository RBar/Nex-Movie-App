import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nex_movie_app/auth/application/auth_bloc/auth_bloc.dart';
import 'package:nex_movie_app/auth/domain/user.dart';
import 'package:nex_movie_app/core/routes/router.gr.dart';
import 'package:nex_movie_app/movies/ui/helpers/color_pallete.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Create the dropwDown with the user information

class HomePageUserDropDown extends StatelessWidget {
  final User user;
  const HomePageUserDropDown({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<String>(
          icon: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: _iconRow(),
          ),
          items: _dropdownItems(),
          onChanged: (value) {
            if (value == 'Sign Out') {
              _logoutAlertDialog(context);
            }
          },
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> _dropdownItems() {
    final DropdownMenuItem<String> userNameItem = DropdownMenuItem<String>(
      value: _getuserName(user),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            _getuserName(user),
            style: TextStyle(
                fontWeight: FontWeight.w600, color: ColorPallete().purple1),
          ),
          Icon(FontAwesomeIcons.user)
        ],
      ),
    );
    final DropdownMenuItem<String> signOutItem = DropdownMenuItem<String>(
      value: 'Sign Out',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            'Sign Out',
          ),
          Icon(
            FontAwesomeIcons.doorOpen,
            color: ColorPallete().genreGrey,
          ),
        ],
      ),
    );
    return [userNameItem, signOutItem];
  }

  Widget _iconRow() {
    return Row(
      children: <Widget>[
        Container(
          // User Profile Pic
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
          width: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                  fit: BoxFit.cover,
                  image: (user.photoUrl != null)
                      ? NetworkImage(user.photoUrl)
                      : const NetworkImage(
                          'https://icon-library.com/images/no-user-image-icon/no-user-image-icon-27.jpg'))),
        ),
        Icon(
          // Down arrow icon
          FontAwesomeIcons.chevronDown,
          size: 15,
          color: ColorPallete().purple1,
        )
      ],
    );
  }

  String _getuserName(User user) {
    //get the user's name
    if (user.name != null && user.name != '') {
      return user.name;
    }
    return 'Unknown user';
  }

  void _logoutAlertDialog(BuildContext context) {
    //show the alert dialog and log out the user
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Log out'),
          content: const Text("Are you sure yout want to log out?"),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                  ExtendedNavigator.of(context)
                      .pushReplacementNamed(Routes.initialPage);
                },
                child: Text(
                  'Yes',
                  style: TextStyle(
                      color: ColorPallete().purple1,
                      fontWeight: FontWeight.w500),
                )),
            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'No',
                  style: TextStyle(
                      color: ColorPallete().purple1,
                      fontWeight: FontWeight.w600),
                )),
          ],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        );
      },
    );
  }
}
