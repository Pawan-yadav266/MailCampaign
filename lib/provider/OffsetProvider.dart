import 'package:flutter/material.dart';

class OffsetProvider with ChangeNotifier{

  bool first = true;

  double xOffset = 230;
  double yOffset = 150;
  double scaleFactor = 0.6;
  bool isDrawerOpen = false;

  openDrawer(){
    xOffset = 230;
    yOffset = 150;
    scaleFactor = 0.6;
    isDrawerOpen = true;
    notifyListeners();
  }

  closeDrawer(){
    xOffset = 0;
    yOffset = 0;
    isDrawerOpen = false;
    scaleFactor = 1;
    notifyListeners();
  }

  OffsetProvider();

}