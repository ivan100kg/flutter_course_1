import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/pics.dart';
import 'package:flutter_complete_guide/widgets/screens/inherit2.dart';
import 'package:flutter_complete_guide/widgets/scroll.dart';
import 'package:flutter_complete_guide/widgets/stack.dart';
import 'package:flutter_complete_guide/widgets/textfield.dart';
import 'package:flutter_complete_guide/widgets/user_profile.dart';

import '../celeb/widgets/celeb_app.dart';
import '../learn-data/json.dart';
import '../movieDB/movie_db_app.dart';
import 'buttons.dart';
import 'context.dart';
import 'inherit.dart';
import 'keys.dart';
import 'list_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'some title',
      // home: UserProfile(),
      home: Scaffold(
        appBar: AppBar(title: Text('Bar')),
        body: CelebApp(),
      ),
    );
  }
}
