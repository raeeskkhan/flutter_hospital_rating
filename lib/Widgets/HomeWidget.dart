import 'package:flutter/material.dart';
import 'package:flutterhospitalrating/Constants.dart';
import 'package:flutterhospitalrating/Widgets/PatientDetailWidget.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            child: Center(
              child: Text(
                "PRACTICE SOCIAL DISTANCING",
                style: kAlertBar,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
        ),
        Expanded(
          flex: 17,
          child: PatientDetails(),
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: (){
              print("SUBMIT TAPPED");
            },
            child: Container(
              child: Center(
                child: Text(
                  "SUBMIT",
                  style: kSubmitText,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
