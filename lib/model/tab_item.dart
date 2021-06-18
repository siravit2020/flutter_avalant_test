import 'package:flutter/material.dart';

class TabItem {
  const TabItem({
    Key? key,
    required this.label,
    required this.content,
  });
  final Text label;
  final Widget content;
}
