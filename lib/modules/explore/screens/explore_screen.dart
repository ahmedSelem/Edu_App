import 'package:flutter/material.dart';
import 'package:pear_education/modules/explore/widgets/widget.dart';
import 'package:pear_education/shared/components/components.dart';
import 'package:pear_education/shared/layout/layout.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      drawer: Drawer(
        child: drawerCustom(context: context),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        width: width,
        padding: EdgeInsets.only(top: height * .009),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                secTitle(title: 'All Education Level'),
                Container(
                  width: width,
                  height: height * .12,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      eduLevelItem(context: context, title: 'Secondary Level'),
                      eduLevelItem(
                          context: context, title: 'Preparatory Level'),
                      eduLevelItem(
                          context: context, title: 'University  Level'),
                      eduLevelItem(
                          context: context, title: 'University  Level'),
                      eduLevelItem(
                          context: context, title: 'University  Level'),
                      eduLevelItem(context: context, title: 'University  Level')
                    ],
                  ),
                ),
                secTitle(title: 'All Centers'),
                Container(
                  width: width,
                  height: height * .12,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      eduLevelItem(context: context, title: 'Eltafawk'),
                      eduLevelItem(context: context, title: 'Abad Elrahman'),
                      eduLevelItem(
                          context: context, title: 'University Center'),
                      eduLevelItem(context: context, title: 'Eltafawk'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    secTitle(title: 'Our Teacher'),
                    TextButton(
                      child: Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                  width: width,
                  height: height * .12,
                  child: Wrap(
                    // scrollDirection: Axis.horizontal,
                    children: [
                      instructorItem(context: context, onTab: () {}),
                      instructorItem(context: context, onTab: () {}),
                      instructorItem(context: context, onTab: () {}),
                      instructorItem(context: context, onTab: () {}),
                      instructorItem(context: context, onTab: () {}),
                      instructorItem(context: context, onTab: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
