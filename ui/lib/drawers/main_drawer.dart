import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(S.current.home),
            ),
          ],
        ),
      );
}
