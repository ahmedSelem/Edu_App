import 'package:flutter/material.dart';

Widget courseItem({
  required BuildContext context,
  required double height,
}) {
  return Stack(
    children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://images.pexels.com/photos/6335/man-coffee-cup-pen.jpg?cs=srgb&dl=pexels-kaboompics-com-6335.jpg&fm=jpg',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.3),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0, .8],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Advanced - UI / UX Design',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
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
                  color: Colors.white70,
                  size: 20,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '2 h 30 min - \$120',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 4),
              child: Text(
                'by Ahmed Selem',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
