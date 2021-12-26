import 'package:flutter/material.dart';

Widget detailsTab() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'PhySics',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 6),
      Text(
        '6 PM - 10 PM',
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      SizedBox(height: 25),
      Text(
        'Description',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 6),
      Text(
        'Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type',
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      SizedBox(height: 30),
      Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Image.network(
              'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-2379004.jpg&fm=jpg',
              height: 35,
              width: 35,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mr. Ahmed Selem'),
              Text(
                'Professor',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
