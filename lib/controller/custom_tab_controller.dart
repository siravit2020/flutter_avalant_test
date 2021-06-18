
import 'package:flutter/widgets.dart';

class CustomTabController extends ChangeNotifier {
  late int _activeIndex;
  CustomTabController() {
    _activeIndex = 0;
  }
  set activeIndex(int value) {
    _activeIndex = value;
    notifyListeners();
  }

  int get activeIndex => _activeIndex;

 
}
