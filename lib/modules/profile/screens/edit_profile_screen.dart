import 'package:flutter/material.dart';
import 'package:pear_education/modules/profile/widgets/appbar_edit_profile.dart';
import 'package:pear_education/shared/components/components.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  static const String routeName = '/edit-profile';

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late FocusNode fullNameNode, emailNode, schoolNode, parentPhoneNode;
  List dropDownList = ['Text 1, Text 2, Text 3'];

  @override
  void initState() {
    super.initState();

    fullNameNode = FocusNode();
    emailNode = FocusNode();
    parentPhoneNode = FocusNode();
    schoolNode = FocusNode();
  }

  @override
  void dispose() {
    fullNameNode.dispose();
    emailNode.dispose();
    parentPhoneNode.dispose();
    schoolNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: height * .035),
      height: height * .93,
      child: SingleChildScrollView(
        child: Column(
          children: [
            appBarEditProfile(context: context),
            Container(
              width: width,
              padding: EdgeInsets.all(width * .05),
              margin: EdgeInsets.only(top: height * .03),
              height: height * .95,
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: height * .05),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.network(
                                'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-2379004.jpg&fm=jpg',
                                height: 130,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            width: 35,
                            height: 35,
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              iconSize: 18,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      inputStyle(
                        context: context,
                        labelText: 'Full Name',
                        initialValue: 'Ahmed Selem',
                        node: fullNameNode,
                        textInputAction: TextInputAction.next,
                        filedSubmitted: (index) {
                          emailNode.requestFocus();
                        },
                      ),
                      inputStyle(
                        context: context,
                        labelText: 'Email',
                        initialValue: 'pselem303@gmail.com',
                        node: emailNode,
                        textInputAction: TextInputAction.next,
                        filedSubmitted: (index) {
                          schoolNode.requestFocus();
                        },
                      ),
                      inputStyle(
                        context: context,
                        labelText: 'School / Faculty',
                        initialValue: 'MNF Science',
                        node: schoolNode,
                        textInputAction: TextInputAction.next,
                        filedSubmitted: (index) {
                          parentPhoneNode.requestFocus();
                        },
                      ),
                      inputStyle(
                        context: context,
                        labelText: 'Parent Phone',
                        initialValue: '01008469068',
                        node: parentPhoneNode,
                        textInputAction: TextInputAction.done,
                        filedSubmitted: (index) {},
                      ),
                      dropDownStyle(
                        context: context,
                        dropDownList: dropDownList,
                        onTap: () {},
                        onChange: (value) {},
                      ),
                      dropDownStyle(
                        context: context,
                        dropDownList: dropDownList,
                        onTap: () {},
                        onChange: (value) {},
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
