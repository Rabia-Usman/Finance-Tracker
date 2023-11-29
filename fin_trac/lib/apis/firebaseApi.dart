import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class APIs {
  //Firebase authentication
  static FirebaseAuth auth = FirebaseAuth.instance;

  //Firestore database
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
}
