import 'package:flutter/material.dart';

class MyCustomSingle extends StatelessWidget {
  const MyCustomSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        child: CustomMultiChildLayout(
          delegate: MyMultiDelegate(),
          children: [
            LayoutId(
              id: 1,
              child: Text(
                  'data-left-000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000'),
            ),
            LayoutId(
              id: 2,
              child: Text(
                  'data-midle-9999999999999999999999999999999999999999999999999'),
            ),
            LayoutId(
              id: 3,
              child: Text(
                  'data-right-4444444444444444444444444444444444444444444444444444444444444444444'),
            ),
          ],
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

class MyMultiDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    if (hasChild(1) && hasChild(2) && hasChild(3)) {
      layoutChild(
          1, BoxConstraints.loose(Size(size.width * 2 / 3, size.height)));
      layoutChild(2, BoxConstraints.tight(Size(size.width / 6, size.height)));
      layoutChild(3, BoxConstraints.loose(Size(size.width / 6, size.height)));
      positionChild(1, Offset(0, size.height / 2));
      positionChild(2, Offset(size.width * 2 / 3, size.height * 1 / 2));
      positionChild(
          3, Offset(size.width - size.width * 1 / 6, size.height * 1 / 2));
    }
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
