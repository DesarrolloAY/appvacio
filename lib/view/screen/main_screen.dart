import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../counter_view.dart';
import '../counter_view_two.dart';
import '../../view_model/counter_viewmodel.dart';
import '../../view_model/counter_viewmodel_two.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterViewModel()),
        ChangeNotifierProvider(create: (_) => CounterViewModelTwo()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contador MVVM'),
        ),
        body: IndexedStack(
          index: selectedIndex,
          children: const [
            CounterView(),
            CounterViewTwo(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.two_wheeler),
              activeIcon: const Icon(Icons.motorcycle),
              label: 'Motors',
              backgroundColor: colors.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              activeIcon: const Icon(Icons.person),
              label: 'Users',
              backgroundColor: colors.tertiary,
            ),
          ],
        ),
      ),
    );
  }
}
