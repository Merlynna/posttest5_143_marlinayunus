// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_const_constructors
import "package:flutter/material.dart";
import 'package:icecreamofficialweb/main.dart';

class InputDataAccess extends StatelessWidget {
  const InputDataAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeAccess(),
    );
  }
}

class HomeAccess extends StatefulWidget {
  const HomeAccess({Key? key}) : super(key: key);

  @override
  _HomeAccessState createState() => _HomeAccessState();
}

class _HomeAccessState extends State<HomeAccess> {
  late String nama;
  late String perasa;

  // Pendataan String
  String text0 = "No Value Entered";
  String text1 = "No Value Entered";

  void _setText() {
    setState(() {
      text0 = nama;
      text1 = perasa;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Inputan'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            height: 10,
            color: Colors.purple,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Nama',
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.woman_2_rounded,
                  size: 30,
                ),
                hintText: "Masukkan Nama Anda",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              onChanged: (value) => nama = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Varian Perasa',
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.book,
                  size: 20,
                ),
                hintText: "Masukkan Perasa Pilihan Anda",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              onChanged: (value) => perasa = value,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: _setText,
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(8),
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text('Submit Answers')),
          SizedBox(
            height: 40,
          ),
          const Text("Nama : "),
          Text(text0),
          SizedBox(
            height: 30,
          ),
          const Text("Perasa Pilihan : "),
          Text(text1),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/system');
              },
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(8),
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text('Keluar')),
        ],
      ),
    );
  }
}
