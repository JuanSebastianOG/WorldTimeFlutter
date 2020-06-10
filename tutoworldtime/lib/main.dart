import 'package:flutter/material.dart';
import 'package:tutoworldtime/pages/Home.dart';
import 'package:tutoworldtime/pages/choose_location.dart';
import 'package:tutoworldtime/pages/home.dart' as prefix0;
import 'package:tutoworldtime/pages/loading.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/' ,
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
