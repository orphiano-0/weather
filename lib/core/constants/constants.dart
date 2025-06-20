import 'package:flutter/material.dart';

const ColorFilter kIconColor = ColorFilter.mode(
  Color(0XFF676767),
  BlendMode.srcIn,
);

const ColorFilter kNavColor = ColorFilter.mode(Colors.black, BlendMode.srcIn);

const TextStyle kDefaultText = TextStyle(
  fontSize: 13,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w400,
);

const TextStyle kTitleText = TextStyle(
  fontSize: 20,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
);

const TextStyle kWeatherText = TextStyle(
  fontSize: 30,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
);

const TextStyle kErrorText = TextStyle(
  fontSize: 15,
  color: Colors.red,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.bold,
);
