import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExampleInherit extends StatelessWidget {
  const ExampleInherit({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DataOwnerStatefull(),
    );
  }
}

class DataOwnerStatefull extends StatefulWidget {
  const DataOwnerStatefull({super.key});

  @override
  State<DataOwnerStatefull> createState() => _DataOwnerStatefullState();
}

class _DataOwnerStatefullState extends State<DataOwnerStatefull> {
  var _value1 = 0;
  var _value2 = 0;

  void _increment1() {
    _value1++;
    setState(() {});
  }

  void _increment2() {
    _value2++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _increment1,
          child: Text('press 1'),
        ),
        ElevatedButton(
          onPressed: _increment2,
          child: Text('press 2'),
        ),
        DataProviderInherit(
          value1: _value1,
          value2: _value2,
          child: const DataConsumerStateless(),
        ),
      ],
    );
  }
}

class DataConsumerStateless extends StatelessWidget {
  const DataConsumerStateless({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context
            .dependOnInheritedWidgetOfExactType<DataProviderInherit>(
                aspect: '1')
            ?.value1 ??
        0;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$value'),
          const DataConsumerStatefull(),
        ],
      ),
    );
  }
}

class DataConsumerStatefull extends StatefulWidget {
  const DataConsumerStatefull({super.key});

  @override
  State<DataConsumerStatefull> createState() => _DataConsumerStatefullState();
}

class _DataConsumerStatefullState extends State<DataConsumerStatefull> {
  @override
  Widget build(BuildContext context) {
    final value = context
            .dependOnInheritedWidgetOfExactType<DataProviderInherit>(
                aspect: '2')
            ?.value2 ??
        0;
    return Text('$value');
  }
}

class DataProviderInherit extends InheritedModel<String> {
  final int value1;
  final int value2;
  const DataProviderInherit(
      {super.key,
      required super.child,
      required this.value1,
      required this.value2});

  @override
  bool updateShouldNotify(DataProviderInherit oldWidget) {
    return value1 != oldWidget.value1 || value2 != oldWidget.value2;
  }

  @override
  bool updateShouldNotifyDependent(
      covariant DataProviderInherit oldWidget, Set<String> dependencies) {
    final isValue1Updated =
        value1 != oldWidget.value1 && dependencies.contains('1');
    final isValue2Updated =
        value2 != oldWidget.value2 && dependencies.contains('2');
    ;
    return isValue1Updated || isValue2Updated;
  }
}


