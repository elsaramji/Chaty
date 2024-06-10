// widgets/massage_contant.dart
import 'package:flutter/material.dart';
import 'package:massage/logic/screen_Size_contorl.dart';

import '../logic/constans.dart';

class MassageContant extends StatelessWidget {
  const MassageContant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListTile(
          style: ListTileStyle.drawer,
          minVerticalPadding: 12.5,
          horizontalTitleGap: 12,
          minTileHeight: Sizer.percentHeight(context: context, percent: 25),
          subtitle: Text(
            "Last Massage Send",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          title: Text(
            "email@gmail.com",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: Text(
            "yeserday",
            style: Theme.of(context).textTheme.titleSmall,
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
