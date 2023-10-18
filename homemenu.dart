import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Navigator.pushNamed(context, '/system');
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
                  Navigator.pushNamed(context, '/app');
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
              ListTile(
                iconColor: Colors.purple,
                splashColor: Colors.black12,
                leading: const Icon(
                  Icons.input,
                  size: 30,
                ),
                title: const Text("Data Inputan"),
                onTap: () {
                  Navigator.pushNamed(context, '/access');
                },
              ),
              ListTile(
                iconColor: Colors.purple,
                splashColor: Colors.black12,
                leading: const Icon(
                  Icons.title,
                  size: 30,
                ),
                title: const Text("Keluar"),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          height: 1000,
          color: Colors.purple[400],
          child: GridView.count(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.all(10),
            crossAxisCount: 2,
            children: <Widget>[
              // Part 1
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/system");
                  },
                  splashColor: Colors.purple.shade200,
                  child: const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 70,
                          color: Colors.purple,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Part 2
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/app');
                  },
                  splashColor: Colors.purple.shade200,
                  child: const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.newspaper_sharp,
                          size: 70,
                          color: Colors.purple,
                        ),
                        Text(
                          "Berita",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Part 3
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  splashColor: Colors.purple.shade200,
                  child: const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.search_off_rounded,
                          size: 70,
                          color: Colors.purple,
                        ),
                        Text(
                          "Pencarian",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Part 4
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/start');
                  },
                  splashColor: Colors.purple.shade200,
                  child: const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.close,
                          size: 70,
                          color: Colors.purple,
                        ),
                        Text(
                          "Keluar",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // Part 5
              Card(
                margin: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/access');
                  },
                  splashColor: Colors.purple.shade200,
                  child: const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.input_rounded,
                          size: 70,
                          color: Colors.purple,
                        ),
                        Text(
                          "Inputan",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
