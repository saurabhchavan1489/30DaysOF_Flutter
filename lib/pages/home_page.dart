import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/titan.dart';
import 'package:flutter_catalog/widgets/drawar.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'dart:convert';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TITAN APP"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (TitanModel.items != null && TitanModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: TitanModel.items.length,
                itemBuilder: (context, index) {
                  final item = TitanModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridTile(
                      header: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          item.name,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      child: Image.network(
                        item.image,
                        fit: BoxFit.cover,
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Center(
                          child: Text(
                            '\$${item.price}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
   );
    
  }
}