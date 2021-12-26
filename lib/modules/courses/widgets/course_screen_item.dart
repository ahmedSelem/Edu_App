import 'package:flutter/material.dart';

Widget courseScreenItem({required double height}) {
  return Container(
   
    margin: EdgeInsets.only(bottom: height * .015),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://images.pexels.com/photos/6335/man-coffee-cup-pen.jpg?cs=srgb&dl=pexels-kaboompics-com-6335.jpg&fm=jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'by Ahmed Selem',
                style: TextStyle(color: Colors.black45, fontSize: 11),
              ),
              Text(
                'Supply Chain management',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'HR-Human Rescores Management Lorem Aps Leand',
                style: TextStyle(
                  color: Colors.black87,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.black38,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '24 Hours',
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
