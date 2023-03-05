import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/domain/model/celeb.dart';

import '../../domain/client/api_client_article.dart';

class CelebWidgetModel extends ChangeNotifier {
  final apiClient = ApiClientCelebs();
  var _models = <Celeb>[];
  List<Celeb> get models => _models;

  Future<void> getCelebs() async {
    print('get celebs');
    final celebs = await apiClient.getCelebs();
    _models += celebs;
    notifyListeners();
  }
}

class CelebModelProvider extends InheritedNotifier<CelebWidgetModel> {
  final CelebWidgetModel model;

  const CelebModelProvider(
      {super.key, required super.child, required this.model});

  @override
  bool updateShouldNotify(CelebModelProvider oldWidget) {
    return model != oldWidget.model;
  }

  static CelebWidgetModel? of(BuildContext context) {
    // подписка - ставим на виджеты с перерисовкой
    return context
        .dependOnInheritedWidgetOfExactType<CelebModelProvider>()
        ?.model;
  }

  static CelebWidgetModel? read(BuildContext context) {
    // без подписки - на те что перерисовывать не надо
    final widget = context
        .getElementForInheritedWidgetOfExactType<CelebModelProvider>()
        ?.widget;
    return widget is CelebModelProvider ? widget.notifier : null;
  }
}
