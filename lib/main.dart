import 'package:flutter/material.dart';
import 'package:pot_shop_mobile/page/Create.dart';
import 'package:pot_shop_mobile/page/Home.dart';
import 'package:pot_shop_mobile/page/Profile.dart';

import 'component/BottomBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pot Shop Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBar(),
    );
  }
}
