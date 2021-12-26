import 'package:flutter/material.dart';
import 'package:pear_education/modules/register/widgets/first_step.dart';
import 'package:pear_education/modules/register/widgets/second_step.dart';
import 'package:pear_education/modules/register/widgets/steper_count.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  static const String routeName = '/register-screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late PageController _pageController;

  late int currentPage;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    currentPage = 0;
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void nextPage() {
    _pageController.nextPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: width,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .04,
                      bottom: MediaQuery.of(context).size.height * .05,
                    ),
                    child: Text(
                      'Sign up a student',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  steperCount(context: context, currentPage: currentPage),
                  Container(
                    height: MediaQuery.of(context).size.height * .79,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20).add(
                      EdgeInsets.only(
                        top: 8,
                      ),
                    ),
                    child: PageView(
                      controller: _pageController,
                      physics: NeverScrollableScrollPhysics(),
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      children: [
                        FirstStep(
                          nextpage: nextPage,
                        ),
                        SecondStep(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () => {Navigator.of(context).pop()},
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
