import 'package:flutter/material.dart';
import 'package:flutterhospitalrating/Widgets/HomeWidget.dart';
import '../Constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HOSPITAL",
          style: kAppBar,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () {
              print("ABOUT DEVELOPER PAGE PRESSED");
            },
          ),
        ],
      ),
      body: HomeWidget(),
    );
  }
}
