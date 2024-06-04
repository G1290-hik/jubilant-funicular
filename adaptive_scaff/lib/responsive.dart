import 'package:flutter/material.dart';

class ResponsiveExample extends StatefulWidget {
  const ResponsiveExample({super.key});

  @override
  State<ResponsiveExample> createState() => _ResponsiveExampleState();
}
class _ResponsiveExampleState extends State<ResponsiveExample> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    LayoutType layoutType;

    if (width >= 840) {
      layoutType = LayoutType.expanded;
    } else if (width >= 600) {
      layoutType = LayoutType.medium;
    } else {
      layoutType = LayoutType.compact;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Example')),
      body: _buildLayout(layoutType),
    );
  }

  Widget _buildLayout(LayoutType layoutType) {
    switch (layoutType) {
      case LayoutType.compact:
        return _buildNormalContainer();
      case LayoutType.medium:
        return _buildWideContainers();
      case LayoutType.expanded:
        return _buildExtraWideContainers();
      default:
        return _buildNormalContainer();
    }
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }

  Widget _buildExtraWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

enum LayoutType { compact, medium, expanded }