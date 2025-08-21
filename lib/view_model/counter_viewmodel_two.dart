import 'package:appvacio/model/counter_model_two.dart';
import 'package:flutter/material.dart';
import '../view_model/counter_viewmodel_two.dart';

class CounterViewModelTwo extends ChangeNotifier {
  //guardar el estado actual
  CounterModelTwo model = CounterModelTwo(0);
  //exponer los daqtos a la vista
  int get count => model.count;
  //creamos las funciones de incrementar y decrementar
  void increment() {
    model.count++;
    notifyListeners();
  }

  void decrement() {
    model.count--;
    notifyListeners();
  }

  void reset() {
    model.count = 0;
    notifyListeners();
  }
}
