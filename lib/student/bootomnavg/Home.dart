// ignore_for_file: use_full_hex_values_for_flutter_colors, use_build_context_synchronously, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_tutor/firebaseAuth/Login.dart';
import 'package:home_tutor/student/bootomnavg/tutor.dart';
import 'package:home_tutor/widget/popular_tutor.dart';

//import '../firebaseAuth/Login.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({super.key});

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  String selectedChip = '';

  final List<String> subject = [
    "Medical Tuition",
    "Physics",
    " Sindhi Tuition",
    "English Tuition",
    "Science Tuition",
    "Chemistry",
    "Arts Tuition",
    "urdu",
    "Mathematics Tuition",
    "1 to 8 class Tuition",
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
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5),
              child: Wrap(
                spacing: 15.0,
                runSpacing: 10.0,
                children: subject.map((String chipLabel) {
                  return GestureDetector(
                    onTap: () {
                      // Handle chip tap
                      selectChip(chipLabel);
                      setState(() {});
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: selectedChip == chipLabel
                            ? Colors.blue // Active color for selected chip
                            : Colors.grey[
                                300], // Inactive color for unselected chips
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Text(
                        chipLabel,
                        style: TextStyle(
                          color: selectedChip == chipLabel
                              ? Colors.white // Text color for selected chip
                              : Colors.black, // Text color for unselected chips
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Padding(padding: EdgeInsets.only(top: 10),
            // child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            //   const Padding(
            //       padding: EdgeInsets.only(
            //     top: 6,
            //   )),
            //   const Text(
            //     "Popular Tutor",
            //     style: TextStyle(
            //       fontSize: 18,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   const SizedBox(
            //     width: 150,
            //   ),
            //   TextButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const TutorScreen()));
            //     },
            //     child: const Text("See All"),
            //   ),
            // ]),
            // ),
            // Tutor(),

           
          //  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          //     const Padding(
          //         padding: EdgeInsets.only(
          //       top: 6,
          //     )),
          //     const Text(
          //       "Popular Tutor",
          //       style: TextStyle(
          //         fontSize: 18,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 150,
          //     ),
          //     TextButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const TutorScreen()));
          //       },
          //       child: const Text("See All"),
          //     ),
          //   ]),
            
            // ignore: prefer_const_constructors
            // Column(
            //   children: [
            //     Container(
            //       height: 300,
            //       width: 200,
            //       margin: EdgeInsets.symmetric(
            //         horizontal: 15,
            //         vertical: 20,
            //       ),
            //       decoration: BoxDecoration(
            //         color: Color(0xFFF2F8FF),
            //         borderRadius: BorderRadius.circular(15),
            //         boxShadow: [
            //           (BoxShadow(
            //               color: Color.fromARGB(255, 255, 255, 255),
            //               spreadRadius: 2,
            //               blurRadius: 4)),
            //         ],
            //       ),
            //       child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Stack(
            //               children: [
            //                 InkWell(
            //                   onTap: () {
            //                     setState(() {});
            //                   },
            //                   child: ClipRRect(
            //                       borderRadius: BorderRadius.only(
            //                           topLeft: Radius.circular(15),
            //                           topRight: Radius.circular(15))),
            //                 )
            //               ],
            //             )
            //           ]),
            //     )
            //   ],
            // )
          ]),
        ));
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

  void selectChip(String chipLabel) {
    // Update the selected chip label
    selectedChip = chipLabel;
    // print('Selected chip: $chipLabel');
  }
}
