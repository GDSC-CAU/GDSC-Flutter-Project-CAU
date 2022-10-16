import 'package:flutter/material.dart';

import 'package:gdscfluttercau/MealView.dart';
import 'package:gdscfluttercau/ScheduleView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const CAUInfo(),
    );
  }
}

class CAUInfo extends StatefulWidget {
  const CAUInfo({Key? key}) : super(key: key);

  @override
  State<CAUInfo> createState() => _CAUInfoState();
}

class _CAUInfoState extends State<CAUInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: const Text('CAU Helper'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {},
                )
              ],
              bottom: const TabBar(
                labelStyle: TextStyle(fontSize: 20),
                unselectedLabelStyle: TextStyle(fontSize: 15),
                  tabs: [
                    Tab(text: 'Meal Plan',),
                    Tab(text: 'Schedule'),
                  ]
              ),
            ),
            body: const TabBarView(
                children: [
                  Tab(child: MealView()),
                  Tab(child: ScheduleView())
                ])
        )
    );
  }
}