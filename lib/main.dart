import 'package:cubit_app/pages/navpages.dart/main_page.dart';
import 'package:cubit_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Cubit());
}

class Cubit extends StatelessWidget {
  const Cubit({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainPage()
    );
  }
}
