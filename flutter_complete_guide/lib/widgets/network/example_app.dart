import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'celeb_model.dart';

class MyHttp extends StatefulWidget {
  const MyHttp({super.key});

  @override
  State<MyHttp> createState() => _MyHttpState();
}

class _MyHttpState extends State<MyHttp> {
  final model = CelebWidgetModel();
  @override
  Widget build(BuildContext context) {
    return CelebModelProvider(
      model: model,
      child: Column(
        children: [
          GetButton(),
          _CelebsListWidget(),
        ],
      ),
    );
  }
}

class GetButton extends StatelessWidget {
  const GetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => CelebModelProvider.of(context)?.getCelebs(),
        child: Text('get all celebs'));
  }
}

class _CelebsListWidget extends StatelessWidget {
  const _CelebsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: CelebModelProvider.of(context)?.models.length,
          itemBuilder: (BuildContext context, index) =>
              _CelebRowWidget(index: index),
        )
      ],
    );
  }
}

class _CelebRowWidget extends StatefulWidget {
  final int index;
  const _CelebRowWidget({super.key, required this.index});

  @override
  State<_CelebRowWidget> createState() => _CelebRowWidgetState();
}

class _CelebRowWidgetState extends State<_CelebRowWidget> {
  @override
  Widget build(BuildContext context) {
    final celeb = CelebModelProvider.of(context)!.models[widget.index];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(celeb.id.toString()),
        const SizedBox(width: 10),
        Text(celeb.name.toString()),
        const SizedBox(width: 10),
        Text(celeb.size.toString()),
        const SizedBox(width: 10),
        Text(celeb.country.toString()),
        const SizedBox(width: 10),
        Text(celeb.birthday.toString()),
        const SizedBox(width: 10),
      ],
    );
  }
}
