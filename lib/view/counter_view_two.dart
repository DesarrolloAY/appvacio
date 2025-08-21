import 'package:appvacio/view_model/counter_viewmodel.dart';
import 'package:appvacio/view_model/counter_viewmodel_two.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterViewTwo extends StatelessWidget {
  const CounterViewTwo({super.key});
  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Contador de Usuarios"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Contador de Usuarios: ${counterViewModel.count}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      counterViewModel.increment();
                    },
                    child: Icon(Icons.add),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      counterViewModel.decrement();
                    },
                    child: Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      counterViewModel.reset();
                    },
                    child: Icon(Icons.refresh),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
