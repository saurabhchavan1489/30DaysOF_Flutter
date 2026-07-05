import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

  backgroundColor: const Color.fromARGB(255, 240, 239, 241),
  elevation: 15,
  shadowColor: Colors.black54,
  centerTitle: true,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(25),
    ),
  ),
  title: const Text(
    "TITAN APP",
    style: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 2, 2, 2),
      letterSpacing: 2,
    ),
  ),
),

      drawer: MyDrawer(),
 );
  }
}