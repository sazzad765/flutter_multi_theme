import 'package:flutter/material.dart';

const appName = 'Flying Bird';

const apiDomain = 'ownlikee.ownmat.com';
const apiBasePath = '/api';
const imageBaseUrl = 'https://ownlikee.ownsop.com/public/';

const ownSopUrl = "https://ownlikee.ownsop.com/api/file_download";
const vpnUrl = "https://www.google.com/";

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

class CustomColors {
  static const primary = Color(0xFF3A606B);
  static const primaryLight = Color(0xFFCBE0EC);
  static const disabled =  Color(0xFF3A606B);
  static const background = Color(0xFFF0F6F9);
  static const cardBackground = Color(0xFFE3EEF5);
  static const darkText = Color(0xff3a3b3d);
  static const lightText = Color(0xff888888);
  static const link = Color(0xff3399ff);
  static const imageBackground = Color(0xfff1f1f1);
  static const divider = Color(0xffe7e9eb);
  static const mainBackground = Colors.white;
  static const secondaryBackground = Color(0xfff5f5f5);

  static const leftMenu = primary;
  static const leftMenuText = Color(0xffffffff);
  static const leftMenuIcon = Color(0xffffffff);
  static const leftMenuSelected = Color.fromRGBO(0, 0, 0, 0.12);
  static const lightGreen = Color(0xff84bf31);
  static const white = Color(0xffffffff);
  static const ownSop = Color(0xFFFF7643);
}
