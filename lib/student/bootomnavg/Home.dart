// ignore_for_file: use_full_hex_values_for_flutter_colors, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_tutor/firebaseAuth/Login.dart';

// import '../firebaseAuth/Login.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  List catName = [
    "Math",
    "BIO",
    "Chemistry",
    "Physics",
    "English",
    "Sindhi",
    "Urdu",
    "IT",
  ];
  List<Color> catColor = [
    const Color(0xfffffcf2f),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7F7F),
    const Color(0xFFCBB4CB),
    const Color(0xFFFC7F7F),
    const Color(0xFFCCC4BB),
    const Color(0xfff78e667),
  ];
  List<Icon> catIcon = [
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.home,
      color: Colors.white,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          "Home student ",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size(3, 60),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          fillColor: Colors.white),
                    ),
                  ),
                ),
              ],
            )),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Categories",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Column(children: [
              GridView.builder(
                itemCount: catName.length,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.01,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: catColor[index],
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: catIcon[index]),
                      ),
                      const SizedBox(height: 10),
                      Text(catName[index]),
                    ],
                  );
                },
              )
            ]),
          ),
        ],
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    const CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }
}
