// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SistemHome extends StatefulWidget {
  const SistemHome({Key? key}) : super(key: key);

  @override
  State<SistemHome> createState() => _SistemHomeState();
}

class _SistemHomeState extends State<SistemHome> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _listPage = <Widget>[
      Container(
        color: Colors.deepPurple.shade100,
        width: double.infinity,
        height: 900,
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    color: Colors.purple.shade400,
                    child: ListView(children: [
                      SizedBox(
                        height: 50,
                      ),
                      CarouselSlider(
                        items: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as1.ftcdn.net/v2/jpg/02/05/76/96/1000_F_205769694_ocVZCPl1Z1NAXsV9PhKOqYYNWThzPLk3.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://as2.ftcdn.net/v2/jpg/03/59/58/95/1000_F_359589531_pyT7BZrvMsU7Z4q2aj1nup5EuLXOcr0H.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as2.ftcdn.net/v2/jpg/02/72/48/93/1000_F_272489306_9y6yeNJZ4qFlb7mlqXAaV6SZMYT87Y17.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as2.ftcdn.net/v2/jpg/03/21/47/85/1000_F_321478591_8pMHk3DUYCqNoBj1QG7Jb4T3fdWr1Pc0.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as1.ftcdn.net/v2/jpg/03/59/58/94/1000_F_359589499_QPtFFKib4l2qmF6o2JPRYGwuIMmrzmzF.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as1.ftcdn.net/v2/jpg/03/67/76/62/1000_F_367766246_l6OEtRJXYkl5tTmMqHisEtUdvIRj68Xh.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as1.ftcdn.net/v2/jpg/02/05/76/96/1000_F_205769694_ocVZCPl1Z1NAXsV9PhKOqYYNWThzPLk3.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as2.ftcdn.net/v2/jpg/02/05/76/97/1000_F_205769784_iM8jTwpmlC9iBIg2xXU26VoeXWD70unZ.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as2.ftcdn.net/v2/jpg/02/15/34/67/1000_F_215346706_T1HOuvC8LM4hZCZvYzpzDTwOBSsyz5tJ.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as2.ftcdn.net/v2/jpg/02/07/14/75/1000_F_207147566_irr29vVI4Lonwk3vH0Nr6kuKGcgGzKUX.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as2.ftcdn.net/v2/jpg/02/06/34/67/1000_F_206346777_FvDBN0I4vgTuIXbIOBnsgNGwM4WQfpSk.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://as1.ftcdn.net/v2/jpg/03/60/49/06/1000_F_360490682_bNlKeyL1xDFNcWdUmSOVK9mxbvTte4E6.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 300,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 10 / 5, // keterangan lebar : tinggi
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 500),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Selamat Datang!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        color: Colors.deepPurple.shade100,
        width: double.infinity,
        height: 1000,
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 536,
                    width: double.infinity,
                    color: Colors.purple.shade400,
                    child: Container(
                      width: double.infinity,
                      height: 1000,
                      color: Colors.purple[400],
                      child: GridView.count(
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
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          backgroundColor: Colors.purple,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        color: Colors.purple.shade100,
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
                  child: const Text("Silahkan Tambahkan Data"),
                  onPressed: () {
                    // Belum ada link
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        color: Colors.purple.shade100,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 25,
        ),
        // ignore: sort_child_properties_last
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "About Penulis",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "NIM",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                "2109106143",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Nama",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Marlina Yunus",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Kelas",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Informatika C 2021",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Kampus",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Universitas Mulawarman",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Alamat",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Jl. Perjuangan 1, Kel. Sempaja Selatan, Kec. Samarinda Utara", // Contoh alamat
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        color: Colors.purple.shade100,
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
                  child: const Text("Thank You!"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_repair_service),
        label: "Beranda",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.phone_android),
        label: "Menu",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label: "Plus",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book_online),
        label: "About Penulis",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.format_list_numbered),
        label: "Keluar",
      ),
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    final _bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.purple.shade500,
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      onTap: _onNavBarTapped,
    );
    return Scaffold(
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
