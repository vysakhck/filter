import 'dart:convert';

import 'package:filter/model/filter.model.dart';
import 'package:filter/page1.dart';
import 'package:filter/page2.dart';
import 'package:filter/screes/filter_screen.dart';
import 'package:filter/services/data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FilterScreen());
  }
}
