import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  //get instance of firestore
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //get user stream
  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        //go through each individual users
        final user = doc.data();
        //return user
        return user;
      }).toList();
    });
  }

  //send message
  Future<Void> sendMessage(String receiverID,message) async {
    //get current user info

    //create a new message

    //construct chat room ID for the two users (sorted to ensure uniqueness)
    
  }
}
