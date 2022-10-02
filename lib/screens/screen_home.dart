import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/list_widget.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;
  List<Color> _colors = [Colors.green, Colors.red];

  void _incrementCounter() {
    setState(() {
      Color temp = _colors[0];
      _colors[0] = _colors[1];
      _colors[1] = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListWidget(
              title: 'box 1',
              color: _colors[0],
            ),
            ListWidget(
              title: 'box 2',
              color: _colors[1],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Text('add'),
      ),
    );
  }
}
