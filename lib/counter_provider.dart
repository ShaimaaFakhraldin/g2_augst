import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _counter = 0;
  get counter => _counter;
  void incrementCounter() {

      _counter++;
      notifyListeners();

  }

}
