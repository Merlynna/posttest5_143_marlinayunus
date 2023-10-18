// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Halaman Utama"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple.shade100,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Marlina Yunus"),
              accountEmail: Text("merlynalyn10@gmail.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://as2.ftcdn.net/v2/jpg/04/26/39/75/1000_F_426397579_QDthuO3xhgTENtOl44b7EJdSjVZpK21b.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://as1.ftcdn.net/v2/jpg/00/86/02/00/1000_F_86020080_vST6kJu6LHyfTx8lgvD7VuklZDqbLPI6.jpg"),
              ),
            ),
            ListTile(
              iconColor: Colors.purple,
              splashColor: Colors.black12,
              leading: Icon(
                Icons.home,
                size: 30,
              ),
              title: Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/system');
              },
            ),
            ListTile(
              iconColor: Colors.purple,
              splashColor: Colors.black12,
              leading: Icon(
                Icons.newspaper_outlined,
                size: 30,
              ),
              title: Text("Berita"),
              onTap: () {
                Navigator.pushNamed(context, '/app');
              },
            ),
            ListTile(
              iconColor: Colors.purple,
              splashColor: Colors.black12,
              leading: Icon(
                Icons.search_off,
                size: 30,
              ),
              title: Text("Pencarian"),
              onTap: () {
                Navigator.pushNamed(context, '/search');
              },
            ),
            ListTile(
              iconColor: Colors.purple,
              splashColor: Colors.black12,
              leading: Icon(
                Icons.title,
                size: 30,
              ),
              title: Text("Kumpulan Menu"),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.deepPurple.shade100,
        width: double.infinity,
        height: 900,
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.purple.shade400,
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Center(
                child: ElevatedButton(
                  child: const Text("Selamat Datang! Terima Kasih!"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
