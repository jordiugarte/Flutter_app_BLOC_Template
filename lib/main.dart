import 'package:flutter/material.dart';
import 'package:flutter_app_bloc_template/src/bloc/provider.dart';
import 'package:flutter_app_bloc_template/src/pages/main.dart';
import 'package:flutter_app_bloc_template/src/pages/splashScreen.dart';
import 'package:flutter_app_bloc_template/src/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: APP_NAME,
        initialRoute: SPLASH_SCREEN_ROUTE,
        //  Page routes
        routes: {
          SPLASH_SCREEN_ROUTE: (BuildContext context) => SplashScreenPage(),
          MAIN_ROUTE: (BuildContext context) => MainPage()
        },
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color(0xffea7c0f)),
          primaryColor: Color(0xffea7c0f),
          accentColor: Color(0xffffc909),
          scaffoldBackgroundColor: Color(0xff03071c),
        ),
      ),
    );
  }
}
