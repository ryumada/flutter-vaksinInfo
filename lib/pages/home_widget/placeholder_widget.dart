import 'package:flutter/cupertino.dart';

class PlaceHolderWidget extends StatelessWidget {
  final Color color;

  PlaceHolderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
