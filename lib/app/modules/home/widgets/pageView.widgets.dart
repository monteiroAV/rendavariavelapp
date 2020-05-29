import 'package:flutter/material.dart';

class TabBarView2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TabBarViewState();
  }
}

class TabBarViewState extends State<TabBarView2> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      
      children: <Widget>[
        Container(
          color: Colors.pink,
        )
      ],
    );
  }
}
