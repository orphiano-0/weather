import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../constants/constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        children: [
          ListTile(
            leading: SvgPicture.asset(
              width: 25,
              'assets/icons/json.svg',
              colorFilter: kIconColor,
            ),
            title: const Text('JSON', style: kTitleText),
            onTap: () {
              context.go('/json');
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              width: 25,
              'assets/icons/xml.svg',
              colorFilter: kIconColor,
            ),
            title: const Text('XML', style: kTitleText),
            onTap: () {
              context.go('/xml');
            },
          ),
        ],
      ),
    );
  }
}
