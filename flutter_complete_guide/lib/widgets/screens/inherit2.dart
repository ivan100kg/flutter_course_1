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
          SimpleCalcWidgetProvider.read(context)?.firstNumber = value,
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
          SimpleCalcWidgetProvider.read(context)?.secondNumber = value,
    );
  }
}

class SumButtonWidget extends StatelessWidget {
  const SumButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => SimpleCalcWidgetProvider.read(context)?.sum(),
        child: Text('sum'));
  }
}

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final value = SimpleCalcWidgetProvider.of(context)?.sumResult ?? 0;
    return Text('$value');
  }
}

class SimpleCalcWidgetProvider
    extends InheritedNotifier<SimpleCalcWidgetModel> {
  SimpleCalcWidgetProvider({
    Key? key,
    required SimpleCalcWidgetModel model,
    required Widget child,
  }) : super(
          key: key,
          notifier: model,
          child: child,
        );

  static SimpleCalcWidgetModel? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SimpleCalcWidgetProvider>()
        ?.notifier;
  }

  static SimpleCalcWidgetModel? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<SimpleCalcWidgetProvider>()
        ?.widget;
    return widget is SimpleCalcWidgetProvider ? widget.notifier : null;
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
      sumResult = 0;
    }
    if (result != sumResult) {
      sumResult = result;
      notifyListeners();
    }
  }
}
