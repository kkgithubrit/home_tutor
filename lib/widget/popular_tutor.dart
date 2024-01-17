// // ignore_for_file: unused_import

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class Tutor extends StatefulWidget {
//   const Tutor({super.key});

//   @override
//   State<Tutor> createState() => _TutorState();
// }

// class _TutorState extends State<Tutor> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 340,
//       child: ListView.builder(
//           itemCount: 2,
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, Index) {
//             return Column(
//               children: <Widget>[
//                 Container(
//                     height: 300,
//                     width: 200,
//                     margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//                     decoration: BoxDecoration(
//                       color: Color(0xFFF2F8FF),
//                       borderRadius: BorderRadius.circular(15),
//                       boxShadow: [
//                         (BoxShadow(
//                             color: Color.fromARGB(255, 255, 255, 255),
//                             spreadRadius: 2,
//                             blurRadius: 4)),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Stack(
//                           children: [
//                             InkWell(
//                               onTap: () {},
//                               child: ClipRRect(
//                                   borderRadius: BorderRadius.only(
//                                       topLeft: Radius.circular(15),
//                                       topRight: Radius.circular(15)),
//                                       child: Image.asset("assets/images${Index+1}",
//                                       height: 200,
//                                       width: 200,
//                                       fit: BoxFit.cover,
//                                  ),
//                                ),   
//                             ),
//                             Align(
//                               alignment: Alignment.topRight,
//                               child: Container(
//                                 margin: EdgeInsets.all(7),
//                                 height: 45,
//                                 width: 45,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xFFF2F8FF),
//                                   shape: BoxShape.circle,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       blurRadius: 4,
//                                       spreadRadius: 2,
//                                     ),
//                                   ]
//                                 ),
//                                 child:Center(
//                                   child: Icon(
//                                     Icons.favorite_outline,
//                                     size: 28,
//                                   ),
//                                 ) ,
//                               ),
//                             ),
//                             Align(
//                               alignment: Alignment.topLeft,
//                               child: Text( 
//                                 "Tutors",
//                                 style:TextStyle(backgroundColor: Colors.blue)
//                                 ),
                                

//                             )
//                           ],
//                         )
//                       ],
//                     )),
//               ],
//             );
//           }),
//     );
//   }
// }
