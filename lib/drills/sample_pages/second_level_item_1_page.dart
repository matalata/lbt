import 'package:flutter/material.dart';
import 'package:lbt/drills/menu.dart';
import '../../soundcontrol/player.dart';

class SecondLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        route: '/secondLevelItem1',
        body: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(10),
          width: 500,
          child: Player(),
        ));
  }
}
