import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_complete_guide/celeb/domain/model/celeb_model.dart';
import 'package:flutter_complete_guide/celeb/widgets/view/celeb_view.dart';
import 'package:provider/provider.dart';


class CelebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => CelebModel(),
        child: const CelebView(),
        lazy: true,
      );
}
