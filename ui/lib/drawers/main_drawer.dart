import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../image/cached_image.dart';
import '../models/image.dart';

class MainDrawerVm extends Equatable {
  const MainDrawerVm({
    required this.username,
    required this.avatar,
    required this.onHeaderPressed,
    required this.onLogoutPressed,
  });

  final String username;
  final ImageVm avatar;
  final VoidCallback onHeaderPressed;
  final VoidCallback onLogoutPressed;

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
            InkWell(
              onTap: vm.onHeaderPressed,
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 32,
                      child: CachedImage(
                        shape: BoxShape.circle,
                        height: 54,
                        width: 54,
                        image: vm.avatar,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(vm.username),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(S.current.logout),
              onTap: vm.onLogoutPressed,
            ),
          ],
        ),
      );
}
