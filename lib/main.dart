import 'package:flutter/material.dart';
import 'package:yudhistira/screens/games_screen.dart';
import 'package:yudhistira/screens/stuff_screen.dart';

import './screens/login_screen.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yudhistira',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(250, 243, 214, 1),
        accentColor: Color.fromRGBO(204, 128, 50, 1),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Color.fromRGBO(204, 128, 50, 1),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: Color.fromRGBO(204, 128, 50, 1),
          )
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Color.fromRGBO(204, 128, 50, 1),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Color.fromRGBO(204, 128, 50, 1),
        )
      ),
      initialRoute: LoginScreen.routeName,
      routes: {
        '/main': (ctx) => TabScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        GamesScreen.routeName: (ctx) => GamesScreen(),
        StuffScreen.routeName: (ctx) => StuffScreen(),
      },
    );
  }
}