import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/movieDB/auth/auth_widget.dart';
import 'package:flutter_complete_guide/movieDB/theme/app_colors.dart';

import 'auth/main_screen_widget.dart';

class MovieDB extends StatelessWidget {
  const MovieDB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieDB',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: AppColors.darkBlue),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.darkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),

      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
      // onGenerateRoute: (settings) => MaterialPageRoute<void>(
      //   builder: (context) => Text('Wrong path!'),
      // ),
    );
  }
}
