import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pear_education/modules/login/screens/login_screen.dart';

Widget pageViewItem({
  @required BuildContext? context,
  @required double? height,
  @required String? image,
  @required String? heading,
  @required String? title,
}) {
  return Column(
    children: [
      Expanded(
        flex: 7,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              width: MediaQuery.of(context!).size.width,
              child: Image.network(
                image!,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  );
                },
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .035),
              child: TextButton(
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
      Expanded(
        flex: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              heading!,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: height! * .02,
                bottom: height * .01,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * .8,
                child: Text(
                  title!,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ],
  );
}
