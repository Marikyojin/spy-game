import 'package:bonfire/bonfire.dart';

import 'package:flutter/material.dart';
import 'package:spy/starter.dart';




void main() {
  runApp(
    MaterialApp(
      title: "Spy vs Family game",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: '8BitMadness'
      ),
      initialRoute: Starter.routName,
      routes: {
        Starter.routName: (context) => Starter(),
      },
    )
  );
}
