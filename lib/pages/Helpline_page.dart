import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home.widgets/home_page.dart';
class HelplinePage extends StatelessWidget {
  const HelplinePage({super.key});

  Future<void> _callSupport(BuildContext context) async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Calling support is not available in this build.'),
      ),
    );
  }

  Future<void> _emailSupport(BuildContext context) async {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Email support is not available in this build.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help & Support"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.support_agent,
                size: 60,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Titan Watch Store",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Need any help?\nContact our customer support.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.phone, color: Colors.white),
                ),
                title: const Text("Helpline Number"),
                subtitle: const Text("8262084626"),
                trailing: ElevatedButton(
                  onPressed: () => _callSupport(context),
                  child: const Text("Call"),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.email, color: Colors.white),
                ),
                title: const Text("Email Support"),
                subtitle: const Text(
                  "saurabhchavan1489@gmail.com",
                ),
                trailing: ElevatedButton(
                  onPressed: () => _emailSupport(context),
                  child: const Text("Email"),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Divider(),

            const SizedBox(height: 10),

            const Text(
              "Business Hours",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Monday - Saturday\n9:00 AM - 7:00 PM",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 30),

            const Text(
              "© 2026 Titan Watch Store",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}