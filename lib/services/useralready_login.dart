import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_tutor/firebaseAuth/Login.dart';
import 'package:home_tutor/firebaseAuth/student.dart';
import 'package:home_tutor/firebaseAuth/teacher.dart';

class SplashServices {
  void signIn(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final User =auth.currentUser;

    if (User != null) {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Teacher())));
    } else {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Student())));
    }
    if (User != null) {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginPage())));
    }
  }
}
