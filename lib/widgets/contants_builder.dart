// widgets/contants_builder.dart
import 'package:flutter/material.dart';
import 'package:massage/Screens/chat_screen.dart';
import 'package:massage/logic/constans.dart';
import 'package:massage/widgets/contant_info.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContantBuilder extends StatelessWidget {
  const ContantBuilder({
    super.key,
    required this.currentuser,
    required this.snapshot,
  });

  final String? currentuser;
  final AsyncSnapshot snapshot;

  @override

  /// Builds a [ListView.builder] widget that displays a list of chat messages.
  ///
  /// The [ListView.builder] is populated with the number of chat messages in
  /// the [snapshot.data] using the [itemCount] property. Each chat message is
  /// rendered using the [itemBuilder] property.
  ///
  /// The [itemBuilder] method takes two parameters: the [BuildContext] and the
  /// index of the chat message being rendered. It retrieves the chat message
  /// from the [snapshot.data] using the index and creates a [ContantInfo]
  /// widget based on the chat message. If the chat message belongs to the
  /// current user, the [ContantInfo] widget is wrapped in a [VisibilityDetector]
  /// widget. The [onVisibilityChanged] callback of the [VisibilityDetector]
  /// updates the [touser] variable when the chat message becomes fully visible.
  ///
  /// When the [ContantInfo] widget is tapped, it navigates to the [ChatScreen]
  /// using the [Navigator.of] method and passes the [touser] as an argument.
  ///
  /// Returns a [ListView.builder] widget.
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: snapshot.data!.docs.length,
        itemBuilder: (context, index) {
          var chatsmap = snapshot.data!.docs[index];
          String touser = chatsmap[receiver_contant_id];

          return chatsmap[receiver_contant_id] != currentuser
              ? VisibilityDetector(
                  key: Key(index.toString()),
                  onVisibilityChanged: (info) {
                    if (info.visibleFraction == 1.0) {
                      touser = chatsmap[receiver_contant_id] == currentuser
                          ? chatsmap[sender_contant_id]
                          : chatsmap[receiver_contant_id];
                    }
                  },
                  child: ContantInfo(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ChatScreen.routeName,
                        arguments: {touser_navigetor_id: touser},
                      );
                    },
                    contant: chatsmap[receiver_contant_id] == currentuser
                        ? chatsmap[sender_contant_id]
                        : chatsmap[receiver_contant_id],
                  ),
                )
              : const SizedBox();
        });
  }
}
