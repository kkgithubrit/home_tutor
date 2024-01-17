import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> isStudent(String uid) async {
  bool existsAsStudent = false;
  bool existsAsTeacher = false;

  try {
    // Check if the document exists in the "student" collection
    DocumentSnapshot studentSnapshot =
        await FirebaseFirestore.instance.collection('students').doc(uid).get();

    existsAsStudent = studentSnapshot.exists;

    // Check if the document exists in the "teacher" collection
    DocumentSnapshot teacherSnapshot =
        await FirebaseFirestore.instance.collection('teachers').doc(uid).get();

    existsAsTeacher = teacherSnapshot.exists;
  } catch (e) {
    // Handle errors (e.g., Firestore exception)
    print("Error: $e");
  }

  return existsAsStudent || existsAsTeacher;
}
