import 'package:flutter/material.dart';

class ProviderCounter extends ChangeNotifier {
  int count = 0;
  value() {
    count++;
    notifyListeners();
  }
}
