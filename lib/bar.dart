import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bae extends StatefulWidget {
  const Bae({Key? key}) : super(key: key);

  @override
  _BaeState createState() => _BaeState();
}

class Choice {
  String title;
  IconData icon;
  Choice(this.icon, this.title);
}

class _BaeState extends State<Bae> with SingleTickerProviderStateMixin {
  List<Choice> tabList = [
    Choice(Icons.directions_bike, 'Bike Direction'),
    Choice(Icons.directions_walk, 'Walk Direction'),
    Choice(Icons.directions_bus, 'Bus Direction'),
    Choice(Icons.directions_boat, 'Boat Direction'),
    Choice(Icons.directions_car, 'Car Direction'),
  ];
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: tabList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
      physics: BouncingScrollPhysics(),
      controller: _controller,
      children: tabList.map((Choice tabList) {
        return Container(
          padding: EdgeInsets.all(35),
          child: Center(
            child: Column(
              children: [
                Text(tabList.title),
                Icon(
                  tabList.icon,
                  size: 240,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    ));
  }
}
