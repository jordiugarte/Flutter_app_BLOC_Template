import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_template/src/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SplashScreen(
      seconds: 2,
      //navigateAfterSeconds: _autoLogin(),
      navigateAfterSeconds: Navigator.pushReplacementNamed(context, MAIN_ROUTE),
      image: Image(
        //image: AssetImage('assets/images/example.png'),
      ),
      photoSize: 100.0,
      backgroundColor: theme.scaffoldBackgroundColor,
      loaderColor: theme.primaryColor,
    );
  }

  /*_autoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    String _phone = prefs.getString(LOCAL_EMAIL);
    String _password = prefs.getString(LOCAL_PASSWORD);

    Base<User> _response = await _userBloc.login(_phone, _password);
    if (_response.getSuccess) {
      Navigator.pushReplacementNamed(
        context,
        SELECT_ATTENTION_ROUTE,
      );
    } else {
      Navigator.pushReplacementNamed(
        context,
        LOGIN_ROUTE,
      );
    }
  }*/
}
