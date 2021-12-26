import 'package:flutter/material.dart';
import 'package:pear_education/modules/profile/widgets/appbar_edit_profile.dart';
import 'package:pear_education/shared/components/components.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  late FocusNode oldPasswordNode, newPasswordNode, confirmPasswordNode;

  late bool isOldPasswordShow, isNewPasswordShow, isConfirmPasswordShow;

  @override
  void initState() {
    super.initState();
    oldPasswordNode = FocusNode();
    newPasswordNode = FocusNode();
    confirmPasswordNode = FocusNode();
    isOldPasswordShow = isNewPasswordShow = isConfirmPasswordShow = false;
  }

  @override
  void dispose() {
    oldPasswordNode.dispose();
    newPasswordNode.dispose();
    confirmPasswordNode.dispose();
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
                      inputStyle(
                        context: context,
                        labelText: 'Old Password',
                        node: oldPasswordNode,
                        textInputAction: TextInputAction.next,
                        suffix: true,
                        obscureText:
                            (isOldPasswordShow == false) ? true : false,
                        suffixIcon: IconButton(
                          icon: Icon(
                            (isOldPasswordShow == false)
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            setState(() {
                              isOldPasswordShow = !isOldPasswordShow;
                            });
                          },
                        ),
                        filedSubmitted: (index) {},
                      ),
                      inputStyle(
                        context: context,
                        labelText: 'New Password',
                        node: newPasswordNode,
                        textInputAction: TextInputAction.next,
                        suffix: true,
                        obscureText:
                            (isNewPasswordShow == false) ? true : false,
                        suffixIcon: IconButton(
                          icon: Icon(
                            (isNewPasswordShow == false)
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            isNewPasswordShow = !isNewPasswordShow;
                          },
                        ),
                        filedSubmitted: (index) {},
                      ),
                      inputStyle(
                        context: context,
                        labelText: 'Confirm password',
                        node: confirmPasswordNode,
                        textInputAction: TextInputAction.next,
                        suffix: true,
                        obscureText:
                            (isConfirmPasswordShow == false) ? true : false,
                        suffixIcon: IconButton(
                          icon: Icon(
                            (isConfirmPasswordShow == false)
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            isConfirmPasswordShow = !isConfirmPasswordShow;
                          },
                        ),
                        filedSubmitted: (index) {},
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
