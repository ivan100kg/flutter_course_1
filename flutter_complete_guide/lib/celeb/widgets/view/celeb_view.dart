import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../../domain/model/celeb_model.dart';

class CelebView extends StatelessWidget {
  const CelebView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.read<CelebModel>();
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: model.inc1, child: Text('button 1')),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: model.inc2, child: Text('button 2')),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(onPressed: model.getCelebs, child: Text('complex')),
        SizedBox(
          height: 10,
        ),
        const _OneWidget(),
        SizedBox(
          height: 10,
        ),
        const _TwoWidget(),
        SizedBox(
          height: 10,
        ),
        const _CelebsWidget(),
      ],
    ));
  }
}

class _OneWidget extends StatelessWidget {
  const _OneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<CelebModel>().one;
    return Text('$value');
  }
}

class _TwoWidget extends StatelessWidget {
  const _TwoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<CelebModel>().two;
    return Text('$value');
  }
}

class _CelebsWidget extends StatelessWidget {
  const _CelebsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<CelebModel>().list;
    return SingleChildScrollView(child: Text('$value'));
  }
}
