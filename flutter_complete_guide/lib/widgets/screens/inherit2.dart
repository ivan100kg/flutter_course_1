import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyMainInh extends StatelessWidget {
  const MyMainInh({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SimpleCalcWidget(),
    );
  }
}

class SimpleCalcWidget extends StatefulWidget {
  const SimpleCalcWidget({super.key});

  @override
  State<SimpleCalcWidget> createState() => _SimpleCalcWidgetState();
}

class _SimpleCalcWidgetState extends State<SimpleCalcWidget> {
  final _model = SimpleCalcWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SimpleCalcWidgetProvider(
          model: _model,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FirstNumberWidget(),
              const SizedBox(
                height: 10,
              ),
              const SecondNumberWidget(),
              const SizedBox(
                height: 10,
              ),
              const SumButtonWidget(),
              const SizedBox(
                height: 10,
              ),
              const ResultWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstNumberWidget extends StatelessWidget {
  const FirstNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
      onChanged: (value) =>
          SimpleCalcWidgetProvider.of(context)?.model.firstNumber = value,
    );
  }
}

class SecondNumberWidget extends StatelessWidget {
  const SecondNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
      ),
      onChanged: (value) =>
          SimpleCalcWidgetProvider.of(context)?.model.secondNumber = value,
    );
  }
}

class SumButtonWidget extends StatelessWidget {
  const SumButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => SimpleCalcWidgetProvider.of(context)?.model.sum(),
        child: Text('sum'));
  }
}

class ResultWidget extends StatefulWidget {
  const ResultWidget({super.key});

  @override
  State<ResultWidget> createState() => _ResultWidgetState();
}

class _ResultWidgetState extends State<ResultWidget> {
  String _value = '-1';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final model = SimpleCalcWidgetProvider.of(context)?.model;
    model?.addListener(() {
      _value = '${model.sumResult}';
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('result: $_value');
  }
}

class SimpleCalcWidgetProvider extends InheritedWidget {
  final SimpleCalcWidgetModel model;
  SimpleCalcWidgetProvider({required super.child, required this.model});

  static SimpleCalcWidgetProvider? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SimpleCalcWidgetProvider>();
  }

  @override
  bool updateShouldNotify(covariant SimpleCalcWidgetProvider oldWidget) {
    return model != oldWidget.model;
  }
}

class SimpleCalcWidgetModel extends ChangeNotifier {
  int? _firstNumber;
  int? _secondNumber;
  int? sumResult;

  set firstNumber(String value) => _firstNumber = int.tryParse(value);
  set secondNumber(String value) => _secondNumber = int.tryParse(value);

  void sum() {
    int? result;
    if (_firstNumber != null && _secondNumber != null) {
      result = _firstNumber! + _secondNumber!;
    } else {
      sumResult = null;
    }
    if (result != sumResult) {
      sumResult = result;
      notifyListeners();
    }
  }
}
