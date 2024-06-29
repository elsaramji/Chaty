// logic/sendmassage.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:massage/logic/constans.dart';

class Sendmassage {
  // Function to send a massage with the specified content, sender, receiver, and time.
  static void sendMassage({
    required Map<String, dynamic> rout,
    required String massagecontent,
    required String currentUser,
    required CollectionReference massage,
  }) 
  async{
    await massage.add({
      massage_id: massagecontent,
      sender_id: currentUser,
      sendto_id: rout[touser_navigetor_id],
      "users": [currentUser, rout[touser_navigetor_id]],
      time_id: DateTime.now(),
    });
  }
}
