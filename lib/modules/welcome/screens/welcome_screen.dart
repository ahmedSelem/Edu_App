import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:pear_education/modules/login/screens/login_screen.dart';
import 'package:pear_education/modules/welcome/widgets/page_view_item.dart';
import 'package:pear_education/shared/components/components.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late PageController _pageController;

  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentPage = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    _pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                child: PageIndicatorContainer(
                  indicatorSelectorColor: Theme.of(context).primaryColor,
                  shape: IndicatorShape.roundRectangleShape(
                    size: Size(30, 7),
                    cornerSize: Size.square(10),
                  ),
                  indicatorColor: Colors.black12,
                  padding: EdgeInsets.only(bottom: 0),
                  child: PageView(
                    controller: _pageController,
                    physics: NeverScrollableScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        _currentPage = value;
                      });
                    },
                    children: [
                      pageViewItem(
                        context: context,
                        height: height,
                        image:
                            'https://images.pexels.com/photos/4861362/pexels-photo-4861362.jpeg?cs=srgb&dl=pexels-cottonbro-4861362.jpg&fm=jpg',
                        heading: 'First See Learning',
                        title:
                            'Forget about a far of paper all knowledge in one learning !',
                      ),
                      pageViewItem(
                        context: context,
                        height: height,
                        image:
                            'https://images.pexels.com/photos/3747542/pexels-photo-3747542.jpeg?cs=srgb&dl=pexels-polina-zimmerman-3747542.jpg&fm=jpg',
                        heading: 'Connect with Everyone',
                        title:
                            'Always Keep in touch with your tutor & friends. let\'s get connected!',
                      ),
                      pageViewItem(
                        context: context,
                        height: height,
                        image:
                            'https://images.pexels.com/photos/4855351/pexels-photo-4855351.jpeg?cs=srgb&dl=pexels-cottonbro-4855351.jpg&fm=jpg',
                        heading: 'Always Fascinated Learning',
                        title:
                            'Always Keep in touch with your tutor & friends. let\'s get connected!',
                      ),
                    ],
                  ),
                  length: 3,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: buttonCustom(
                  context: context,
                  width: MediaQuery.of(context).size.width * .9,
                  margin: 12,
                  title: (_currentPage == 2) ? 'Get Started' : 'Next !',
                  onPressed: () {
                    if (_currentPage == 2) {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    } else {
                      _nextPage();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
