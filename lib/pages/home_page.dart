import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/titan.dart';
import 'package:flutter_catalog/widgets/drawar.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TITAN APP"),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: TitanModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: TitanModel.items[index],
          );
        },
      ),
    );
  }
}