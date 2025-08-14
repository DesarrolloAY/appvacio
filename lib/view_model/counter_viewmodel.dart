import 'package:appvacio/model/counter_model.dart';
import 'package:flutter/material.dart';
import '../view_model/counter_viewmodel.dart';

class CounterViewModel extends ChangeNotifier {
  //guardar el estado actual
  CounterModel model = CounterModel(0);
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
}
