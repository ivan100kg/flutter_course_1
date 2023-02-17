import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/movieDB/auth/auth_widget.dart';
import 'package:flutter_complete_guide/movieDB/theme/app_colors.dart';

import 'auth/main_screen_widget.dart';

class MovieDB extends StatelessWidget {
  const MovieDB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: AppColors.darkBlue)),
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
