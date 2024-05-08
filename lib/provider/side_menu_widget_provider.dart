import 'package:flutter/material.dart';

class SideMenuProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  bool isSelected(int index) {
    return _selectedIndex == index;
  }
}