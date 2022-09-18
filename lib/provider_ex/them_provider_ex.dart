import 'package:flutter/material.dart';

class ThemProviderEX extends ChangeNotifier{

  Color mainColor = Colors.blue;
  void changeThemeColor(Color color) {
    mainColor = color;
    print("show_color ${color.value}");

    notifyListeners();
  }

}