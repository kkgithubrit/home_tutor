import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? profilePic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
            
        children: [
          SizedBox(height: 10),
          Text("Profile ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Container(
              child: profilePic == null
                  ? CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.purple,
                      child: Image.asset('assets/images/read.png'),
                    )
                  : CircleAvatar(
                      radius: 70,
         ))
        ],
      )),
    ));
  }
}
