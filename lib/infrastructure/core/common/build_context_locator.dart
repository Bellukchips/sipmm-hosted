import 'package:flutter/material.dart';

class BuildContextLocator {
  static BuildContext? _context;

  static BuildContext? get context => _context;

  static void setContext(BuildContext context) {
    _context = context;
  }
}
