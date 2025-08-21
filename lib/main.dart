import 'package:appvacio/view/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appvacio/view_model/counter_viewmodel.dart';
import 'package:appvacio/view/counter_view.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterViewModel(), //Creamos nuestro ViewModel
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MainScreen(), //La vista ahora puede acceder al ViewModel
    );
  }
}
