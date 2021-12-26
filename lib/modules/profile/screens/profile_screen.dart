import 'package:flutter/material.dart';
import 'package:pear_education/modules/profile/screens/change_password_screen.dart';
import 'package:pear_education/modules/profile/screens/edit_profile_screen.dart';
import 'package:pear_education/modules/profile/widgets/information_item.dart';
import 'package:pear_education/modules/profile/widgets/profile_top.dart';
import 'package:pear_education/shared/components/components.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String routeName = '/profileScreen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            iconSize: 28,
            padding: EdgeInsets.all(0),
            icon: Icon(Icons.manage_accounts_outlined),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                enableDrag: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                builder: (BuildContext _) {
                  return modalSheetCustom(
                    context: context,
                    height: 1,
                    child: EditProfileScreen(),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            profileTop(
              width: width,
              height: height,
            ),
            Container(
              width: width,
              height: height * .50,
              padding: EdgeInsets.symmetric(horizontal: width * .1).add(
                EdgeInsets.only(top: height * .035),
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  informationItem(
                    context: context,
                    spaceAround: height * .02,
                    title: 'Full Name',
                    value: 'Ahmed Selem',
                  ),
                  informationItem(
                    context: context,
                    spaceAround: height * .02,
                    title: 'User Name',
                    value: 'SElem1234',
                  ),
                  informationItem(
                    context: context,
                    spaceAround: height * .02,
                    title: 'Phone Number',
                    value: '0100846903',
                  ),
                  informationItem(
                    context: context,
                    spaceAround: height * .02,
                    title: 'Password',
                    value: 'Password',
                    isShowBtn: true,
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        enableDrag: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        builder: (BuildContext _) {
                          return modalSheetCustom(
                            context: context,
                            height: 1,
                            child: ChangePasswordScreen(),
                          );
                        },
                      );
                    },
                  ),
                  informationItem(
                    context: context,
                    spaceAround: height * .02,
                    title: 'Scool / Faculty ',
                    value: 'MNf.Science',
                  ),
                  informationItem(
                    context: context,
                    spaceAround: height * .02,
                    title: 'Parent Phone',
                    value: '01128476905',
                  ),
                  informationItem(
                    context: context,
                    spaceAround: height * .02,
                    title: 'Email',
                    value: 'pselem303@gmail.com',
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
