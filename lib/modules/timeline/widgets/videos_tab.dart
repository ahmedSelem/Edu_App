import 'package:flutter/material.dart';

Widget videosTab({required BuildContext context, required double width}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black.withOpacity(.1)
        ),
      ),
    ),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          child: IconButton(
            icon: Icon(
              Icons.play_arrow_sharp,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width * .67,
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                'Welcome The First Leasson',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * .50,
                  height: 4,
                  margin: EdgeInsets.only(right: 24),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Text(
                  '5:53 mins',
                  style: TextStyle(fontSize: 10, color: Colors.black54),
                )
              ],
            )
          ],
        ),
      ],
    ),
  );
}
