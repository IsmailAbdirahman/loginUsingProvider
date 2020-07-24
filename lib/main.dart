import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signinemail/Model/UserIdModel.dart';
import 'package:signinemail/wrapper.dart';

import 'Service/AuthService.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamProvider<UserIdModel>.value(
       value: AuthService().onAuthStateChanged,
          child: Wrapper()),
    );
  }
}

