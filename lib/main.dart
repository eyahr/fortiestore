import 'package:flutter/material.dart';
import 'package:fortistore/creer_un_compte.dart';
import 'package:fortistore/home.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Color.fromARGB(255, 2, 27, 48)),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
