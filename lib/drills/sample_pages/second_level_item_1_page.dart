import 'package:flutter/material.dart';
import 'package:lbt/drills/menu.dart';
import '../../soundcontrol/player.dart';

class SecondLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem1',
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Container(
          width: 1300,
          height: 1300,
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'Упражнение',
                  ),
                  Tab(
                    text: 'Задание к упражнению',
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                Text(
                  'Упражнение',
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    width: 500,
                    child: Player(canRec: true))
                /*
                    
                        */
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
