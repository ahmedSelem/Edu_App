import 'package:flutter/material.dart';
import 'package:pear_education/modules/courses/widgets/course_screen_item.dart';
import 'package:pear_education/modules/courses/widgets/form_filter.dart';
import 'package:pear_education/shared/components/components.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);
  static const String routeName = '/course-screen';
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('Courses'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).add(
              EdgeInsets.only(bottom: 6),
            ),
            child: secTitleFilter(
              context: context,
              width: width,
              title: 'All Courses',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return modalSheetCustom(
                      context: context,
                      height: .87,
                      child: formFilterCourseScreen(
                        context: context,
                        width: width,
                        height: height,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: height * .018).add(
                EdgeInsets.symmetric(horizontal: 20),
              ),
              physics: BouncingScrollPhysics(),
              children: [
                courseScreenItem(height: height),
                courseScreenItem(height: height),
                courseScreenItem(height: height),
                courseScreenItem(height: height),
                courseScreenItem(height: height),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
