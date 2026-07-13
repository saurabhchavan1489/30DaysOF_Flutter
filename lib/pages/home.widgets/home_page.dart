import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/titan.dart';
import 'package:flutter_catalog/widgets/drawar.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),

      drawer: const MyDrawer(),

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        centerTitle: true,
        title: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "TITAN WATCHES",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Premium Watch Collection",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to TITAN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Discover Premium Watches",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Watches...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          // Product List + Footer
          Expanded(
            child: TitanModel.items.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    children: [
                      ...TitanModel.items.map(
                        (item) => ItemWidget(item: item),
                      ),

                      const SizedBox(height: 25),
                      const Divider(thickness: 1),

                      const SizedBox(height: 15),

                      const Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.watch,
                              size: 60,
                              color: Colors.deepPurple,
                            ),

                            SizedBox(height: 10),

                            Text(
                              "Thank You!",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              "Thank you,\nSaurabh Chavan\nfor visiting the TITAN App.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black54,
                              ),
                            ),

                            SizedBox(height: 10),

                            Text(
                              "We hope to see you again ❤️",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),

                            SizedBox(height: 25),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromARGB(255, 242, 242, 243),
        onPressed: () {},
        icon: const Icon(Icons.shopping_cart_checkout),
        label: const Text("Checkout"),
      ),
    );
  
  }
}
