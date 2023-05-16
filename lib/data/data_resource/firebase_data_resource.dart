import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class FirebaseDataResource {
  initializeFirebase(String path, String method, dynamic data);
}

class FirebaseDataResourceImpl extends FirebaseDataResource {
  final Reference storageRef;

  FirebaseDataResourceImpl(this.storageRef);

  @override
  initializeFirebase(String path, String method, dynamic data) {
    try {
      if (method == "post") {
        CollectionReference users = FirebaseFirestore.instance.collection(path);
        return users
            .add(data)
            .then((value) => print("User Added"))
            .catchError((error) => print("Failed to add user: $error"));
      }
    } on FirebaseException catch (e) {
      // Caught an exception from Firebase.
      print("Failed with error '${e.code}': ${e.message}");
    }
  }
}
