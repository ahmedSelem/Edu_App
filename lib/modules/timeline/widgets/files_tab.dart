import 'package:flutter/material.dart';

Widget filesTab({required String image}) {
  return GestureDetector(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black.withOpacity(.04)),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 35,
            width: 35,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text('About the Natural of light.pdf'),
          ),
        ],
      ),
    ),
  );
}
