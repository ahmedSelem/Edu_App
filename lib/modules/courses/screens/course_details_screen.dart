import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({Key? key}) : super(key: key);

  @override
  _CourseDetailsScreenState createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: height * .4,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.pexels.com/photos/6335/man-coffee-cup-pen.jpg?cs=srgb&dl=pexels-kaboompics-com-6335.jpg&fm=jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.red,
                  height: height,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
