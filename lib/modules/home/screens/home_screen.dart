import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:pear_education/modules/home/widgets/todo_item.dart';
import 'package:pear_education/modules/home/widgets/upcoming_lesson.dart';
import 'package:pear_education/shared/components/components.dart';
import 'package:pear_education/shared/layout/layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: drawerCustom(context: context),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        height: height * .82,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              width: width,
              padding: EdgeInsets.only(top: height * .009),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Section
                  secTitle(title: 'UpComing Lessons'),

                  //UpComing Lessons Slider
                  Container(
                    margin: EdgeInsets.only(bottom: height * .009),
                    height: height * .33,
                    child: Swiper(
                      itemCount: 3,
                      viewportFraction: 0.7,
                      scale: 0.75,
                      itemBuilder: (context, index) => upcomignLesson(
                        context: context,
                        groupImage:
                            'https://images.pexels.com/photos/5088017/pexels-photo-5088017.jpeg?cs=srgb&dl=pexels-olia-danilevich-5088017.jpg&fm=jpg',
                      ),
                    ),
                  ),
                  // Title Section
                  secTitle(title: 'To Do'),

                  // To Do Slider
                  Container(
                    margin: EdgeInsets.only(
                      bottom: height * .009,
                    ),
                    height: height * .23,
                    child: Swiper(
                      itemCount: 3,
                      viewportFraction: 0.7,
                      scale: 0.75,
                      itemBuilder: (context, index) =>
                          toDoItem(context: context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
