import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "TITAN";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TITAN App"),
      ),
      body : Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome  to $days App - Day $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }

}