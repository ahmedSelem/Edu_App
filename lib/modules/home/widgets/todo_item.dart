import 'package:flutter/material.dart';
import 'package:pear_education/shared/components/components.dart';

Widget toDoItem({required BuildContext context}) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                'assets/images/exam (3).png',
                width: 20,
                height: 20,
                scale: 2.5,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apri 14  - 11:24 AM to 1:30 PM',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                  Text(
                    'Exam Test Today Text',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Quiz - Ahmed - Math',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        buttonCustom(
          context: context,
          width: double.infinity,
          margin: 20,
          title: 'Take Quiz',
          isFillBackgroundColor: false,
          onPressed: () {},
        ),
      ],
    ),
  );
}
