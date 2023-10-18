// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // ignore: non_constant_identifier_names
  var LoginKey = GlobalKey<_LoginState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text("Halaman Login"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 25,
        ),
        color: Colors.purple.shade200,
        // ignore: sort_child_properties_last
        child: Form(
          key: LoginKey,
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Image(
                    image: NetworkImage(
                        'https://as1.ftcdn.net/v2/jpg/03/68/13/78/1000_F_368137886_9MqZDkUf9kLVWn44dj0xQu4QQKV85Mk4.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to My Sistem! Please Login Email and Password Below!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    hintText: "Masukkan Username",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.note_add,
                      size: 30,
                    ),
                    hintText: "Masukkan Nama Panggilan",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Nama Panggilan",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30,
                    ),
                    hintText: "Masukkan Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.confirmation_num_rounded,
                      size: 30,
                    ),
                    hintText: "Masukkan Confirmation Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Confirmation Password",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        hoverColor: Colors.purple.shade100,
        onPressed: () {
          Navigator.pushNamed(context, "/start");
        },
        child: Icon(
          Icons.done_rounded,
          color: Colors.purple,
        ),
      ),
    );
  }
}
