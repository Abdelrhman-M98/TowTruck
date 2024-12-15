import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tow_truck/Screens/setting_page.dart';
import 'package:tow_truck/Screens/tracking_page.dart';
import 'package:tow_truck/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const TrackingPage(),
    const SettingsScreen.SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 70,
        indicatorColor: const Color(0xffD7F3FF),
        surfaceTintColor: const Color(0xffD7F3FF),
        selectedIndex: selectedIndex,
        onDestinationSelected: _onItemTapped,
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.directions_walk_sharp),
            label: 'Tracking',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: _pages[selectedIndex],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Aymon",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ClipOval(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const SearchBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.idCard),
                ),
                const SizedBox(width: 8),
                const Text(
                  "Location Map",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 80),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Edit",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14,
                        fontFamily: "Poppins"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            DesignWidget(),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const Center(
                    child: Text(
                      "Request Assistance Now",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                        width: 302,
                        height: 170,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.network(
                              "https://www.shutterstock.com/image-photo/tow-truck-on-public-road-600nw-2315695327.jpg"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: Text(
                      "Fuel Delivery",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Colors.grey.shade300,
                      borderOnForeground: true,
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                        width: 302,
                        height: 170,
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.network(
                              "https://cdn.prod.website-files.com/5846f919fad6c09350789d43/63933e447c2067f52b8150bd_58f8262ef5bb8549330bdfbc_58f663f2913855108c881354_shutterstock_275048336.webp"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DesignWidget extends StatelessWidget {
  const DesignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                log("Map");
              },
              child: SizedBox(
                width: 100,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Map',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "Poppins"),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const VerticalDivider(
              color: Colors.black,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: GestureDetector(
                onTap: () {
                  log("Tire");
                },
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                            onPressed: () {
                              log("Tire");
                            },
                            icon: Image.asset("assets/Image/IconOfTire.png")),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Tire Repair',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xffD7F3ff),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: TextField(
            cursorColor: primColor,
            decoration: InputDecoration(
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  )),
              hintText: 'Enter Pickup',
              hintStyle: const TextStyle(
                  color: Colors.grey, fontSize: 11, fontFamily: 'Poppins'),
              border: InputBorder.none,
            ),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
