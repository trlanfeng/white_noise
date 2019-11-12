import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridCell extends StatefulWidget {
  final Widget child;
  GridCell({this.child});
  @override
  State<StatefulWidget> createState() {
    return GridCellState();
  }
}

class GridCellState extends State<GridCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          widget.child,
          Container(child: Text('123'),)
        ],
      ),
    );
  }
}
