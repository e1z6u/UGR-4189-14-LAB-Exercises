import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider extends ChangeNotifier {
  int counterValue;

  CounterProvider({
    this.counterValue = 0,
  });
   void incrementNumber() {
    counterValue++;
    notifyListeners();
  }

  void decrementNumber() {
    counterValue--;
    notifyListeners();
  }
}