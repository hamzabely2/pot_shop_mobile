import 'package:flutter/material.dart';

import 'item/ItemList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ItemList(),
          ),
        ],
      ),
    );
  }
}
