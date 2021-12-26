
import 'package:flutter/material.dart';

Widget groupItem({
  required double width,
  required double height,
  required BuildContext context,
}) {
  return Container(
    width: width,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    margin: EdgeInsets.only(bottom: height * .02),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Math',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              height: height * .035,
              width: width * .002,
              color: Theme.of(context).primaryColor,
              margin: EdgeInsets.symmetric(horizontal: width * .03),
            ),
            Text(
              'Sunday and Wednesday',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 12,
              ),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: height * .02),
          child: Text(
            'Name of groups any Thing Here',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Text(
          'Secondary Second Secondry',
          style: TextStyle(color: Colors.black45, fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-2379004.jpg&fm=jpg',
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 6),
                Text('Ahmed Selem'),
              ],
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey[50],
                padding: EdgeInsets.symmetric(horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Details'),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}
