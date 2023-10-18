// ignore_for_file: library_private_types_in_public_api, override_on_non_overriding_member, prefer_final_fields
import 'package:flutter/material.dart';
import 'package:icecreamofficialweb/name.dart';

class LatihanPencarian extends StatefulWidget {
  const LatihanPencarian({super.key});

  @override
  _LatihanPencarianState createState() => _LatihanPencarianState();
}

class _LatihanPencarianState extends State<LatihanPencarian> {
  TextEditingController _controllerSearch = TextEditingController();

  Widget? searchTextField = const Text("List Users");

  bool search = false;
  Color _bgColor = Colors.purple;
  List list = [];

  @override
  void initState() {
    super.initState();
    list.addAll(items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _bgColor,
        title: searchTextField,
        actions: <Widget>[
          (search == false)
              ? IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      searchTextField = appSearch(context);
                      _bgColor = Colors.purple.shade400;
                      search = true;
                    });
                  })
              : IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      list.clear();
                      list.addAll(items);
                      _controllerSearch.clear();
                    });
                  })
        ],
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
                // tidak bisa dipencet
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
        itemCount: list.length,
        itemBuilder: (context, int index) {
          return ListTile(
            title: Text(
              list[index],
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
      ),
      backgroundColor: Colors.purple.shade200,
    );
  }

  Widget appSearch(BuildContext context) {
    return TextField(
      controller: _controllerSearch,
      style: const TextStyle(color: Colors.black, fontSize: 18),
      decoration: InputDecoration(
          icon: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  searchTextField = const Text("Nama Pembeli");
                  search = false;
                  _bgColor = Colors.purple.shade200;
                  _controllerSearch.clear();
                  list.clear();
                  list.addAll(items);
                });
              }),
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.black)),

      // setiap ada perubahan, jalankan fungsi _searchName
      onChanged: (name) {
        _searchName(name);
      },
    );
  }

  _searchName(String name) {
    if (name.isNotEmpty) {
      setState(() {
        list.clear();
        for (var item in items) {
          if (item.toLowerCase().contains(name.toLowerCase())) {
            list.add(item);
          }
        }
      });
    } else {
      setState(() {
        list.clear();
        list.addAll(items);
      });
    }
  }
}
