import 'package:flutter/material.dart';

class MyCustomSingle extends StatelessWidget {
  const MyCustomSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        child: CustomSingleChildLayout(
          delegate: OwnSingleChildLayoutDelegate(),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}

class OwnSingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return true;
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return constraints.biggest;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) =>
      constraints;

  @override
  Offset getPositionForChild(Size size, Size childSize) => Offset.zero;
}
