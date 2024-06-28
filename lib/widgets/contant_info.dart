// widgets/contant_info.dart
import 'package:flutter/material.dart';

import 'package:massage/logic/screen_Size_contorl.dart';


import '../logic/constans.dart';

class ContantInfo extends StatelessWidget {
  final String contant;
  final VoidCallback? onTap;

  const ContantInfo({
    required this.onTap,
    required this.contant,
    super.key,
  });

  @override
    /// Builds the widget tree for the given [BuildContext].
    ///
    /// Returns a [Padding] widget that wraps a [ListTile] widget. The [ListTile]
    /// has an `onTap` callback, a minimum tile height calculated using the
    /// [Sizer.percentHeight] method, a [Text] widget with the `contant` value,
    /// and a [CircleAvatar] widget with a background color and an [Icon] child.
    ///
    /// The [BuildContext] is used to retrieve the current theme's text theme to
    /// style the [Text] widget.
    ///
    /// The [contant] parameter is the value to be displayed in the [Text] widget.
    ///
    /// The [onTap] parameter is the callback function to be called when the
    /// [ListTile] is tapped.
    ///
    /// Returns a [Widget] representing the built widget tree.
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: ListTile(
          onTap: onTap,
          minTileHeight: Sizer.percentHeight(context: context, percent: 12.5),
          title: Text(
            contant,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          leading: const CircleAvatar(
            backgroundColor: kColorSnackBarBackground,
            child: Icon(
              color: Colors.white,
              Icons.person,
            ),
          ),
        ));
  }
}
