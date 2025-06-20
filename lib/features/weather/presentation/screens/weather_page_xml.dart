import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/app_drawer.dart';

class WeatherPageXml extends StatelessWidget {
  const WeatherPageXml({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              'assets/icons/burger.svg',
              width: 25,
              colorFilter: kNavColor,
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
