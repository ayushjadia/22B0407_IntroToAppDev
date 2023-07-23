import 'package:flutter/material.dart';
import 'package:world_time/screens/home.dart';
import 'package:world_time/screens/expense.dart';
import 'package:world_time/screens/addexpense.dart';


void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Home(),
    '/expense': (context) => Expense(),
    '/addexpense': (context) => Addexpense(),
  },
)
);

