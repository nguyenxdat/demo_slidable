import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      groupTag: '0',
      startActionPane: ActionPane(
        extentRatio: 0.5,
        motion: const BehindMotion(),
        children: [
          RightScreen(),
        ],
      ),
      endActionPane: ActionPane(
        extentRatio: 0.9999,
        motion: const BehindMotion(),
        children: [
          LeftScreen(),
        ],
      ),
      child: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}

class LeftScreen extends StatelessWidget {
  const LeftScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}

class RightScreen extends StatelessWidget {
  const RightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
