import 'package:flutter/material.dart';
import 'package:unit_conversor/category.dart';

final _backgroundColor = Colors.green[100];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _categoryIcons=<IconData>[
    Icons.label_outline,
    Icons.album,
    Icons.volume_up,
    Icons.accessibility,
    Icons.timer,
    Icons.computer,
    Icons.battery_full,
    Icons.monetization_on,
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
        _categoryNames[i],
        _baseColors[i],
        _categoryIcons[i],
      ));
    }

    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}