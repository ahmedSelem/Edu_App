import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:pear_education/modules/home_courses/widgets/course_item.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          indicatorColor: Theme.of(context).primaryColor,
          indicatorWeight: 3,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w400,
          ),
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Hr',
            ),
            Tab(
              text: 'Design',
            ),
            Tab(
              text: 'Development',
            ),
            Tab(
              text: 'Marketing',
            ),
          ],
        ),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        padding: EdgeInsets.only(top: 25),
        child: TabBarView(
          controller: tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Swiper(
              itemCount: 3,
              viewportFraction: 0.7,
              scale: 0.75,
              itemBuilder: (context, index) => courseItem(
                context: context,
                height: height,
              ),
            ),
            Swiper(
              itemCount: 3,
              viewportFraction: 0.7,
              scale: 0.75,
              itemBuilder: (context, index) => courseItem(
                context: context,
                height: height,
              ),
            ),
            Swiper(
              itemCount: 3,
              viewportFraction: 0.7,
              scale: 0.75,
              itemBuilder: (context, index) => courseItem(
                context: context,
                height: height,
              ),
            ),
            Swiper(
              itemCount: 3,
              viewportFraction: 0.7,
              scale: 0.75,
              itemBuilder: (context, index) => courseItem(
                context: context,
                height: height,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
