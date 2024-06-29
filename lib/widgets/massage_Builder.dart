// widgets/massage_Builder.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/widgets/chat_bubbles.dart';

class MassageBuilder extends StatelessWidget {
  const MassageBuilder({
    super.key,
    required this.currentUser,
    required this.rout,
    required this.snapshot,
    required this.scrollController,
  });

  final String? currentUser;
  final Map<String, dynamic> rout;
  final AsyncSnapshot<QuerySnapshot> snapshot;
  final ScrollController scrollController;

  @override

  /// Builds a ListView widget based on the snapshot data.
  ///
  /// The ListView widget displays a list of chat bubbles based on the data in the
  /// snapshot. It iterates over the documents in the snapshot and checks if the
  /// user IDs match the current user and the route navigator ID. If there is a
  /// match, it displays a ChatBubbles widget with the massage ID from the
  /// snapshot. If the user IDs are reversed, it displays a
  /// ChatBubblesforfrined widget with the massage ID from the snapshot. If there
  /// is no match, it returns an empty SizedBox.
  ///
  /// The function takes no parameters.
  ///
  /// Returns a [ListView] widget.
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        controller: scrollController,
        itemCount: snapshot.data!.docs.length,
        itemBuilder: (context, index) {
          if (snapshot.data!.docs[index][users_id].first == currentUser &&
              snapshot.data!.docs[index][users_id].last ==
                  rout[touser_navigetor_id]) {
            return ChatBubbles(contant: snapshot.data!.docs[index][massage_id]);
          } else if (snapshot.data!.docs[index][users_id].first ==
                  rout[touser_navigetor_id] &&
              snapshot.data!.docs[index][users_id].last == currentUser) {
            return ChatBubblesforfrined(
                contant: snapshot.data!.docs[index][massage_id]);
          } else {
            return const SizedBox();
          }
        });
  }
}
