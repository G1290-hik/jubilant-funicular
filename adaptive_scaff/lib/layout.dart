import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatefulWidget {
  const LayoutBuilderExample({super.key});

  @override
  State<LayoutBuilderExample> createState() => _LayoutBuilderExampleState();
}

class _LayoutBuilderExampleState extends State<LayoutBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            LayoutType layoutType;
        
            if (constraints.maxWidth >= 840) {
              layoutType = LayoutType.expanded;
            } else if (constraints.maxWidth >= 600) {
              layoutType = LayoutType.medium;
            } else {
              layoutType = LayoutType.compact;
            }
        
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
          },
        ),
      ),
    );
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
