import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class MainDrawerVm extends Equatable {
  const MainDrawerVm({
    required this.username,
    required this.onLogout,
  });

  final String username;
  final VoidCallback onLogout;

  @override
  List<Object?> get props => [username];
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    required this.vm,
    super.key,
  });

  final MainDrawerVm vm;

  @override
  Widget build(BuildContext context) => Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Text(
                'Coming soon',
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(S.current.logout),
              onTap: vm.onLogout,
            ),
          ],
        ),
      );
}
