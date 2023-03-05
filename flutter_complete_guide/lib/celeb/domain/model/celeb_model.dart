import 'package:flutter/material.dart';

import '../client/celeb_client.dart';
import '../entity/celeb.dart';

class CelebModel extends ChangeNotifier {
  var one = 0;
  var two = 0;
  var list = <Celeb>[];

  void inc1() {
    one++;
    notifyListeners();
  }

  void inc2() {
    two++;
    notifyListeners();
  }

  void getCelebs() async {
    list = await CelebClient().getCelebs();
    notifyListeners();
  }
}
