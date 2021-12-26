import 'package:flutter/material.dart';

Widget profileTop({required double width, required double height}) {
  return Container(
    width: width,
    height: height * .36,
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(
            'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-2379004.jpg&fm=jpg',
            height: 130,
            width: 130,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Ahmed Selem',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Text(
          'Secondary - Second Secondary',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '10',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                Text(
                  'Groups',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Container(
              width: 2,
              height: 50,
              color: Colors.grey[100],
              margin: EdgeInsets.symmetric(horizontal: 30),
            ),
            Column(
              children: [
                Text(
                  '5',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                Text(
                  'Subject',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
