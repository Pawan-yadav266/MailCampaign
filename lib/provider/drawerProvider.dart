import 'package:flutter/material.dart';

class DrawerProvider with ChangeNotifier{
  int index = 0;

  changeIndex(int value){
    index = value;
    notifyListeners();
    print(index);
  }

  change(){
    notifyListeners();
  }

  DrawerProvider();
}