import 'package:flutter/material.dart';
import 'package:pear_education/modules/home_courses/widgets/all_categories.dart';
import 'package:pear_education/modules/home_courses/widgets/home_top.dart';
import 'package:pear_education/modules/home_courses/widgets/top_instructors_item.dart';
import 'package:pear_education/shared/components/components.dart';
import 'package:pear_education/shared/layout/layout.dart';

class HomeCoursesScreen extends StatefulWidget {
  const HomeCoursesScreen({Key? key}) : super(key: key);

  @override
  _HomeCoursesScreenState createState() => _HomeCoursesScreenState();
}

class _HomeCoursesScreenState extends State<HomeCoursesScreen>
    with TickerProviderStateMixin {
  late FocusNode searchNode;

  @override
  void initState() {
    super.initState();
    searchNode = FocusNode();
  }

  @override
  void dispose() {
    searchNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: drawerCustom(context: context),
      ),
      body: Container(
        height: height * .82,
        width: width,
        child: ListView(
          padding: EdgeInsets.only(top: 25),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: homeTop(context: context, height: height, width: width),
            ),
            secTitle(title: 'All Categories', paddingB: 15, paddingT: 30),
            Container(
              height: height * .34,
              margin: EdgeInsets.only(left: 8),
              child: AllCategories(),
            ),
            secTitle(title: 'Our Top Instructors', paddingB: 15, paddingT: 30),
            Container(
              margin: EdgeInsets.only(bottom: height * .009),
              padding: const EdgeInsets.only(left: 20),
              height: height * .17,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  topInstructorsItem(height: height, width: width),
                  topInstructorsItem(height: height, width: width),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
