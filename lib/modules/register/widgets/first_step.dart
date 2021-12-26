import 'package:flutter/material.dart';
import 'package:pear_education/modules/login/screens/login_screen.dart';
import 'package:pear_education/shared/components/components.dart';

class FirstStep extends StatefulWidget {
  final Function? nextpage;
  const FirstStep({Key? key, this.nextpage}) : super(key: key);

  @override
  _FirstStepState createState() => _FirstStepState();
}

class _FirstStepState extends State<FirstStep> {
  late FocusNode telephoneNode, usernameNode, passwordNode, confirmPasswordNode;

  late int currentPage;

  late bool isPasswordShow, isConfirmPasswordShow;

  @override
  void initState() {
    super.initState();
    telephoneNode = FocusNode();
    usernameNode = FocusNode();
    passwordNode = FocusNode();
    confirmPasswordNode = FocusNode();
    currentPage = 0;
    isPasswordShow = false;
    isConfirmPasswordShow = false;
  }

  @override
  void dispose() {
    super.dispose();
    telephoneNode.dispose();
    usernameNode.dispose();
    passwordNode.dispose();
    confirmPasswordNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: width * .04,
          ),
          inputStyle(
            context: context,
            labelText: 'Telephone',
            node: telephoneNode,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.phone,
            filedSubmitted: (value) {
              usernameNode.requestFocus();
            },
          ),
          inputStyle(
            context: context,
            labelText: 'UserName',
            node: usernameNode,
            textInputAction: TextInputAction.next,
            filedSubmitted: (value) {
              passwordNode.requestFocus();
            },
          ),
          inputStyle(
            context: context,
            labelText: 'Password',
            node: passwordNode,
            textInputAction: TextInputAction.next,
            suffix: true,
            obscureText: (isPasswordShow == false) ? true : false,
            suffixIcon: IconButton(
              icon: Icon(
                (isPasswordShow == false)
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off,
                color: Colors.black54,
              ),
              onPressed: () {
                setState(() {
                  isPasswordShow = !isPasswordShow;
                });
              },
            ),
            filedSubmitted: (value) {
              confirmPasswordNode.requestFocus();
            },
          ),
          inputStyle(
            context: context,
            labelText: 'Confirm Password',
            node: confirmPasswordNode,
            textInputAction: TextInputAction.done,
            suffix: true,
            obscureText: true,
            initialValue: '',
            suffixIcon: IconButton(
              icon: Icon(
                (isConfirmPasswordShow == false)
                    ? Icons.remove_red_eye_outlined
                    : Icons.visibility_off,
                color: Colors.black54,
              ),
              onPressed: () {
                setState(
                  () {
                    isConfirmPasswordShow = !isConfirmPasswordShow;
                  },
                );
              },
            ),
            filedSubmitted: (value) {},
          ),
          buttonCustom(
            title: 'Next',
            context: context,
            margin: MediaQuery.of(context).size.width * .05,
            width: double.infinity,
            onPressed: () {
              widget.nextpage!();
            },
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .02),
            child: Text(
              'By signing up, you agree to our Terms of Service and Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Text(
                      'Login in now !',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
