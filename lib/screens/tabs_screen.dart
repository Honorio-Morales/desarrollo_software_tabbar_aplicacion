import 'package:flutter/material.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10, // Probar el scroll del TabBar con 10 tabs
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 226, 187),
        body: SafeArea(
          child: Column(
            children: const [
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.home)),
                  Tab(text: 'Tab 3'),
                  Tab(icon: Icon(Icons.home)),
                  Tab(text: 'Tab 5'),
                  Tab(text: 'Tab 6'),
                  Tab(text: 'Tab 7'),
                  Tab(text: 'Tab 8'),
                  Tab(text: 'Tab 9'),
                  Tab(text: 'Tab 10'),
                ],
              ), // TabBar
              Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car_outlined, size: 100, color: Colors.red),
                    Icon(Icons.directions_transit_filled_outlined, size: 100, color: Colors.green),
                    Icon(Icons.directions_bike_sharp, size: 100, color: Colors.orange),
                    Icon(Icons.directions_walk_sharp, size: 100, color: Colors.purple),
                    Icon(Icons.directions_car_outlined, size: 100, color: Colors.red),
                    Icon(Icons.directions_transit_filled_outlined, size: 100, color: Colors.green),
                    Icon(Icons.directions_bike_sharp, size: 100, color: Colors.orange),
                  ],
                ), // TabBarView
              ), // Expanded
            ],
          ), // Column
        ), // SafeArea
      ), // Scaffold
    ); // DefaultTabController
  }
}
