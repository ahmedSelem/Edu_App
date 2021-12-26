import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appBarEditProfile({required BuildContext context}) {
  return Container(
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Expanded(
          flex: 4,
          child: Center(
            child: Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
