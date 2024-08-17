// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TabbarButtons extends StatefulWidget {
  final String text;
  final Color? color;
  const TabbarButtons({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  State<TabbarButtons> createState() => _TabbarButtonsState();
}

class _TabbarButtonsState extends State<TabbarButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: const BorderRadius.all(Radius.circular(40)),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          widget.text,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
