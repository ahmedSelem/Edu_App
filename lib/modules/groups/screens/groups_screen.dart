import 'package:flutter/material.dart';
import 'package:pear_education/modules/groups/widgets/group_item.dart';
import 'package:pear_education/modules/groups/widgets/subject_item.dart';
import 'package:pear_education/shared/components/components.dart';
import 'package:pear_education/shared/layout/layout.dart';

class GroupsScreen extends StatefulWidget {
  const GroupsScreen({Key? key}) : super(key: key);

  @override
  _GroupsScreenState createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
      ),
      drawer: Drawer(
        child: drawerCustom(context: context),
      ),
      backgroundColor: Theme.of(context).accentColor,
      body: Scrollbar(
        child: Container(
          height: height * .82,
          padding: EdgeInsets.only(top: height * .009).add(
            EdgeInsets.symmetric(horizontal: 20),
          ),
          child: Column(
            children: [
              SizedBox(height: 8),
              secTitleFilter(
                context: context,
                width: width,
                title: 'Groups you subscribe .',
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
                        height: .65,
                        child: Container(
                          width: width,
                          padding: EdgeInsets.all(width * .03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: secTitle(
                                  title: 'Search By Subject .',
                                ),
                              ),
                              Wrap(
                                children: [
                                  subjectItem(
                                    context: context,
                                    width: width,
                                  ),
                                  subjectItem(
                                    context: context,
                                    width: width,
                                  ),
                                  subjectItem(
                                    context: context,
                                    width: width,
                                  ),
                                  subjectItem(
                                    context: context,
                                    width: width,
                                  ),
                                  subjectItem(
                                    context: context,
                                    width: width,
                                  ),
                                  subjectItem(
                                    context: context,
                                    width: width,
                                  ),
                                ],
                              ),
                              buttonModalSheetCustom(
                                context: context,
                                width: width,
                                title: 'Apply Filter',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 25),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        groupItem(
                          context: context,
                          width: width,
                          height: height,
                        ),
                        groupItem(
                          context: context,
                          width: width,
                          height: height,
                        ),
                        groupItem(
                          context: context,
                          width: width,
                          height: height,
                        ),
                        groupItem(
                          context: context,
                          width: width,
                          height: height,
                        ),
                        groupItem(
                          context: context,
                          width: width,
                          height: height,
                        ),
                        groupItem(
                          context: context,
                          width: width,
                          height: height,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
