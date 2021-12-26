import 'package:flutter/material.dart';
import 'package:pear_education/modules/courses/screens/courses_screen.dart';
import 'package:pear_education/modules/login/screens/login_screen.dart';
import 'package:pear_education/modules/profile/screens/profile_screen.dart';
import 'package:pear_education/modules/timeline/screens/timeline_screen.dart';

Widget drawerCustom({required BuildContext context}) {
  return SafeArea(
    child: Container(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .18,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(.2),
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .06,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image.network(
                      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-2379004.jpg&fm=jpg',
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmed Selem',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Second Secondry',
                        style: TextStyle(color: Colors.black45, fontSize: 12),
                      ),
                      TextButton(
                        child: Text(
                          'Log Out',
                          style: TextStyle(color: Colors.red),
                        ),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(LoginScreen.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .02),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.person_outline,
                    size: 30,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(ProfileScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.av_timer_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'TimeLine',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(TimeLineScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.quiz_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Quizes',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home_work_outlined,
                    size: 30,
                  ),
                  title: Text(
                    'Home Work',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.check_box_outline_blank,
                    size: 30,
                  ),
                  title: Text(
                    'Question Bank',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.check_box_outline_blank,
                    size: 30,
                  ),
                  title: Text(
                    'Courses',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(CoursesScreen.routeName);
                  },
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
