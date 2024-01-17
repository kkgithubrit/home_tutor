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
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://bestprofilepictures.com/wp-content/uploads/2020/07/Cool-Profile-Picture-For-Instagram.jpg'),
              ),
              Positioned(
                  child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_a_photo),
              ))
            ],
          )
        ],
      )),
    );
  }
}
