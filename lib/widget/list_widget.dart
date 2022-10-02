import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key, required this.title, required this.color})
      : super(key: key);
  final String title;
  final Color color;

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Row(
        children: [
          Container(
            width: size.width * 0.3,
            height: size.height * 0.2,
            decoration: BoxDecoration(color: widget.color),
            child: Text(widget.title),
          )
        ],
      ),
    );
  }
}
