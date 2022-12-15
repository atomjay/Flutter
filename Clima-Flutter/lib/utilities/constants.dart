import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 48.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Color.fromARGB(255, 77, 57, 0),
  // color: Colors.white,
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kColorScheme = Color.fromARGB(255, 77, 57, 0);
const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: 'Enter City Name',
    hintStyle: TextStyle(
      color: kColorScheme,
      fontSize: 18.0,
    ),
    contentPadding: EdgeInsets.all(30.0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(60.0),
      ),
      borderSide: BorderSide.none,
    )
    // icon: Icon(
    //   FontAwesomeIcons.earthAmericas,
    //   color: kColorScheme,
    // ),
    );

const kApiKey = 'your-api-key';
const kOpenWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';
