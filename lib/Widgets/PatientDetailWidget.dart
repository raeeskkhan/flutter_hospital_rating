import 'package:flutter/material.dart';
import 'package:flutterhospitalrating/Constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

//class PatientDetails extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    double _rating = 3;
//
//    return ;
//  }
//}

class PatientDetails extends StatefulWidget {
  @override
  _PatientDetailsState createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  double _rating = 3;
  String _ratingMeaning = "NEUTRAL";

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "NAME OF PATIENT",
                    style: kHomePage,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "[OPTIONAL]",
                    style: kOptionalText,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ENTER PATIENT NAME",
                  hintStyle: kOptionalText,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "HOSPITAL ID OF PATIENT",
                    style: kHomePage,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "[OPTIONAL]",
                    style: kOptionalText,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ENTER ID OF PATIENT",
                  hintStyle: kOptionalText,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "DATE OF ADMITTANCE",
                    style: kHomePage,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "[COMPULSORY]",
                    style: kOptionalText,
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                height: 35.0,
                child: Row(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      child: Text(
                        "PICK DATE",
                        style: kOptionalText.copyWith(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          "2020-01-11",
                          style: kOptionalText,
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "EXPERIENCE RATING",
                          style: kHomePage,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "[COMPULSORY]",
                          style: kOptionalText,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        RatingBar(
                          initialRating: _rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, a) => Icon(
                            Icons.star,
                            color: Colors.blue,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                            setState(
                              () {
                                _rating = rating;
                                switch (_rating.round()) {
                                  case 1:
                                    {
                                      _ratingMeaning = "POOR";
                                    }
                                    break;

                                  case 2:
                                    {
                                      _ratingMeaning = "OKAY";
                                    }
                                    break;

                                  case 3:
                                    {
                                      _ratingMeaning = "NEUTRAL";
                                    }
                                    break;
                                  case 4:
                                    {
                                      _ratingMeaning = "GOOD";
                                    }
                                    break;
                                  case 5:
                                    {
                                      _ratingMeaning = "EXCELLENT";
                                    }
                                    break;

                                  default:
                                    {
                                      _ratingMeaning = "NEUTRAL";
                                    }
                                }
                              },
                            );
                          },
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "RATING: ",
                                style: kHomePage,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "${_rating.toString()}",
                                style: kHomePage,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "[$_ratingMeaning]",
                                style: kHomePage,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
