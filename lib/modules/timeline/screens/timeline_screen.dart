import 'package:flutter/material.dart';
import 'package:pear_education/modules/timeline/widgets/form_search.dart';
import 'package:pear_education/modules/timeline/widgets/session_item.dart';
import 'package:pear_education/shared/components/components.dart';

class TimeLineScreen extends StatefulWidget {
  const TimeLineScreen({Key? key}) : super(key: key);
  static const String routeName = ' /timeline-screen';

  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('TimeLine'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: secTitleFilter(
                  context: context,
                  width: width,
                  title: 'Session',
                  height: .7,
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
                          height: .75,
                          child: Container(
                            width: width,
                            padding: EdgeInsets.all(width * .03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    'Filter',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 4),
                                  child: Text(
                                    'Pick The Filters To specify what you are looking for.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                FormSearch(),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),

              // Tabs
              Container(
                height: height * .8,
                margin: EdgeInsets.only(top: height * .01),
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Theme.of(context).accentColor,
                    toolbarHeight: 50,
                    elevation: 1,
                    bottom: TabBar(
                      controller: tabController,
                      indicatorColor: Theme.of(context).primaryColor,
                      indicatorWeight: 3,
                      labelColor: Colors.black,
                      labelStyle: TextStyle(
                        fontSize: 18,
                      ),
                      tabs: [
                        Tab(
                          text: 'Upcoming',
                        ),
                        Tab(
                          text: 'Ended',
                        ),
                      ],
                    ),
                  ),
                  body: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10).add(
                      EdgeInsets.only(top: 20),
                    ),
                    color: Theme.of(context).accentColor,
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        ListView(
                          physics: BouncingScrollPhysics(),
                          children: [
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                          ],
                        ),
                        ListView(
                          physics: BouncingScrollPhysics(),
                          children: [
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                            sessionItem(
                              context: context,
                              width: width,
                              height: height,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
