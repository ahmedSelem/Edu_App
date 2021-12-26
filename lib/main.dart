import 'package:flutter/material.dart';
import 'package:pear_education/modules/courses/screens/courses_screen.dart';
import 'package:pear_education/modules/instructors/screens/instructor_details_screen.dart';
import 'package:pear_education/modules/login/screens/login_screen.dart';
import 'package:pear_education/modules/main_screen.dart';
import 'package:pear_education/modules/profile/screens/edit_profile_screen.dart';
import 'package:pear_education/modules/profile/screens/profile_screen.dart';
import 'package:pear_education/modules/register/screens/register_screen.dart';
import 'package:pear_education/modules/timeline/screens/session_details.dart';
import 'package:pear_education/modules/timeline/screens/timeline_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pear Education',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffa5c239),
        accentColor: Color(0xffFBFCF5),
        fontFamily: 'NotoSans',
        appBarTheme: AppBarTheme(
          color: Color(0xffFBFCF5),
          elevation: 0,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),

      home: MainScreen(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        MainScreen.routeName: (context) => MainScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        EditProfileScreen.routeName: (context) => EditProfileScreen(),
        TimeLineScreen.routeName: (context) => TimeLineScreen(),
        SessionDetails.routeName: (context) => SessionDetails(),
        CoursesScreen.routeName: (context) => CoursesScreen(),
        InstructorDetailsScreen.routeName: (context) => InstructorDetailsScreen(),
      },
    );
  }
}
