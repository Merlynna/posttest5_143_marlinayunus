import 'package:flutter/material.dart';

class MyAppSystem extends StatefulWidget {
  const MyAppSystem({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppSystemState createState() => _MyAppSystemState();
}

class _MyAppSystemState extends State<MyAppSystem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              // ignore: prefer_const_constructors
              icon: Icon(Icons.home_filled),
              iconSize: 20,
              color: Colors.white,
              alignment: Alignment.centerRight,
            ),
          ],
          title: const Center(
            child: Text(
              "Berita Terkini",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.purple.shade100,
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
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
                leading: const Icon(
                  Icons.home,
                  size: 30,
                ),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              ListTile(
                iconColor: Colors.purple,
                splashColor: Colors.black12,
                leading: const Icon(
                  Icons.newspaper_outlined,
                  size: 30,
                ),
                title: const Text("Berita"),
                onTap: () {
                  // tidak bisa dipencet
                },
              ),
              ListTile(
                iconColor: Colors.purple,
                splashColor: Colors.black12,
                leading: const Icon(
                  Icons.search_off,
                  size: 30,
                ),
                title: const Text("Pencarian"),
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
              ListTile(
                iconColor: Colors.purple,
                splashColor: Colors.black12,
                leading: const Icon(
                  Icons.title,
                  size: 30,
                ),
                title: const Text("Kumpulan Menu"),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          ),
        ),
        body: ListView.builder(
          // itemcount adalah total panjang data yang ingin ditampilkan
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: ListTile(
                hoverColor: Colors.purple,
                iconColor: Colors.black,
                leading: Image.network(
                  "https://as2.ftcdn.net/v2/jpg/02/01/42/95/1000_F_201429565_cRgdYjavKZC7h9H6OwuYfY2jlIi368PY.jpg",
                ),
                title: const Text(
                  "Rasa Es Krim varian Baru dari Kota Samarinda, Kalimantan Timur, Indonesia setara dengan Es Krim dari Negeri Ginseng, Korea Selatan?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: const Text(
                  'Organisasi makanan dunia, Food and Agriculture Organisation atau FAO menyatakan bahwa es krim varian baru, Vanilla Squash dikabarkan memiliki rasa yang sama seperti varian dari Korea Selatan. Direktur dari FAO, Dr. Edward Saoma mengungkapkan pengumuman tersebut pada Konferensi Asia Afrika pada 20 April 2022 kemarin di Bandung.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
