import 'package:flutter/material.dart';

class ProviderCon extends ChangeNotifier {
   int count =0;
  value(){
    count++;
    notifyListeners();
  }

}