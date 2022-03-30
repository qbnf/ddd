import 'package:flutter/material.dart';
import 'package:ddd/pg/1pg.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
      primaryColor: Colors.blueAccent
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => Pg1(),
  },
));
