import 'package:flutter/material.dart';

Widget upcomignLesson(
    {required BuildContext context, required String groupImage}) {
  return Container(
    child: Column(
      children: [
        Expanded(
          flex: 6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              groupImage,
              fit: BoxFit.cover,
              width: double.infinity,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'April 24 - 12:20 Am To 1:30 Pm',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 12, color: Colors.black45),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Test Lesson Today Monday',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Lessons - Ahmed - Math',
                  style: TextStyle(color: Colors.black45),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
