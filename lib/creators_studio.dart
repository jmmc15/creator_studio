import 'package:creators_hub/signup.dart';
import 'package:creators_hub/signup_page.dart';
import 'package:flutter/material.dart';


class CreatorStudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Creator Studio',
      home: new Login(),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
 }