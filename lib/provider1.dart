import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  int counter = 0;

  increment() {
    counter++;
  }
}
