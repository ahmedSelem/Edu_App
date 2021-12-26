import 'package:flutter/material.dart';
import 'package:pear_education/modules/timeline/widgets/details_tab.dart';
import 'package:pear_education/modules/timeline/widgets/files_tab.dart';
import 'package:pear_education/modules/timeline/widgets/session_details_bg.dart';
import 'package:pear_education/modules/timeline/widgets/videos_tab.dart';
import 'package:pear_education/shared/components/components.dart';

class SessionDetails extends StatefulWidget {
  const SessionDetails({Key? key}) : super(key: key);
  static const String routeName = '/session-details';

  @override
  _SessionDetailsState createState() => _SessionDetailsState();
}

class _SessionDetailsState extends State<SessionDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * .90,
            child: Stack(
              children: [
                DefaultTabController(
                  length: 3,
                  child: NestedScrollView(
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        SliverAppBar(
                          expandedHeight: height * .4,
                          floating: false,
                          pinned: true,
                          flexibleSpace: FlexibleSpaceBar(
                            // centerTitle: true,
                            title: Text(
                              "Test Lessons Test Style - Group3",
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            background: sessionDetailsBG(),
                          ),
                        ),
                        SliverPersistentHeader(
                          pinned: true,
                          delegate: _SliverAppBarDelegate(
                            TabBar(
                              labelColor: Colors.black87,
                              labelStyle: TextStyle(
                                fontSize: 18,
                              ),
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Theme.of(context).primaryColor,
                              indicatorWeight: 3,
                              labelPadding: EdgeInsets.all(0),
                              tabs: [
                                Tab(
                                  child: Center(
                                    child: Text('Details'),
                                  ),
                                ),
                                Tab(
                                  child: Center(
                                    child: Text('Videos'),
                                  ),
                                ),
                                Tab(
                                  child: Center(
                                    child: Text('Files'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ];
                    },
                    body: Container(
                      color: Theme.of(context).accentColor,
                      padding: EdgeInsets.only(top: height * .03).add(
                        EdgeInsets.symmetric(horizontal: width * .06),
                      ),
                      child: TabBarView(
                        children: [
                          ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              detailsTab(),
                            ],
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  videosTab(
                                    context: context,
                                    width: width,
                                  ),
                                  videosTab(
                                    context: context,
                                    width: width,
                                  ),
                                  videosTab(
                                    context: context,
                                    width: width,
                                  ),
                                  videosTab(
                                    context: context,
                                    width: width,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              filesTab(image: 'assets/images/pdf.png'),
                              filesTab(image: 'assets/images/image.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width * .9,
            margin: EdgeInsets.only(top: height * .02),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: buttonCustom(
              context: context,
              width: width,
              margin: 0,
              title: 'Go Live',
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withOpacity(.2),
          ),
        ),
      ),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
