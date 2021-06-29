import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  final double totalWidth, dashWidth, emptyWidth, dashHeight;

  final Color dashColor;

  const DotWidget({
    this.totalWidth = 321,
    this.dashWidth = 11,
    this.emptyWidth = 6,
    this.dashHeight = 3,
    this.dashColor = Colors.black,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
        (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin:
              EdgeInsets.only(left: emptyWidth / 1.5, right: emptyWidth / 1.5),
        ),
      ),
    );
  }
}
