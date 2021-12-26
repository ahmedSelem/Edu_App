
import 'package:flutter/material.dart';

Widget subjectItem({
  required BuildContext context,
  required double width,
}) {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Container(
        width: width * .30,
        margin: EdgeInsets.only(
          bottom: 3,
        ),
        padding: EdgeInsets.symmetric(horizontal: 4),
        height: 120,
        decoration: BoxDecoration(
          // color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Mask Group 2.png',
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 6),
            FittedBox(
              child: Text(
                'Geology',
              ),
            ),
          ],
        ),
      ),
      // Container(
      //   width: 30,
      //   height: 30,
      //   decoration: BoxDecoration(
      //     color: Colors.green,
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   child: Icon(
      //     Icons.check_outlined,
      //     color: Colors.white,
      //   ),
      // ),
    ],
  );
}
