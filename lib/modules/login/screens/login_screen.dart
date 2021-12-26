import 'package:flutter/material.dart';
import 'package:pear_education/modules/main_screen.dart';
import 'package:pear_education/modules/register/screens/register_screen.dart';
import 'package:pear_education/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/login-screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late GlobalKey<FormState> form;
  late FocusNode usernameNode, passwordNode;
  @override
  void initState() {
    super.initState();
    form = GlobalKey<FormState>();
    usernameNode = FocusNode();
    passwordNode = FocusNode();
  }

  @override
  void dispose() {
    usernameNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: width,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .1,
                      bottom: MediaQuery.of(context).size.height * .05,
                    ),
                    child: Text(
                      'Login in to your education account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        //ام بلال
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  signWithSocialMedia(
                    context: context,
                    image: 'assets/images/google-symbol.png',
                    title: 'Sign in with Google',
                    function: () {
                      print('hhh');
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  signWithSocialMedia(
                    context: context,
                    image: 'assets/images/facebook (1).png',
                    title: 'Sign in with facebook',
                    function: () {},
                  ),
                  Container(
                    width: width * .9,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .03,
                      bottom: MediaQuery.of(context).size.height * .03,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Divider(),
                        Positioned(
                          child: Container(
                            child: Text(
                              'OR',
                              style: TextStyle(fontSize: 16),
                            ),
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width * .9,
                    child: Form(
                      key: form,
                      child: Column(
                        children: [
                          inputStyle(
                            context: context,
                            labelText: 'Phone Or Username',
                            node: usernameNode,
                            filedSubmitted: (value) {
                              passwordNode.requestFocus();
                            },
                            textInputAction: TextInputAction.next,
                          ),
                          inputStyle(
                            context: context,
                            labelText: 'Password',
                            node: passwordNode,
                            textInputAction: TextInputAction.done,
                            filedSubmitted: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  buttonCustom(
                    context: context,
                    title: 'Login',
                    margin: MediaQuery.of(context).size.height * .01,
                    width: width,
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(MainScreen.routeName);
                    },
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forget Password ?',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
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
                          'Don\'t have an account ? ',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        TextButton(
                          child: Text(
                            'Register !',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(RegisterScreen.routeName,);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => {
                  Navigator.of(context).pop(),
                },
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
