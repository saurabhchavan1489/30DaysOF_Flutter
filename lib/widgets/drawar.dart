import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/Helpline_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0ykwJDgmFTfwRbug4E0i45yM1CetEt0OdE5svb37kuA&s=10";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,

        child: ListView(
          padding: EdgeInsets.zero,

          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                accountName: Text("Saurabh Chavan"),
                accountEmail: Text("saurabhchavan1489@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profil",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
                
              ),
                ),
                
            ListTile(
              leading: const Icon(
                Icons.support_agent,
                color: Colors.white,
              ),
              title: const Text(
                "Helpline",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HelplinePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
