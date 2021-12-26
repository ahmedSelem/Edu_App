
import 'package:flutter/material.dart';

Widget eduLevelItem({required BuildContext context, required String title}) {
  return Container(
    width: MediaQuery.of(context).size.width * .3,
    child: Column(
      children: [
        Image.asset(
          'assets/images/01.png',
          height: 50,
          width: 50,
        ),
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .01),
          child: FittedBox(
            child: Text(
              title,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
      ],
    ),
  );
}

// Widget teacherItem({required BuildContext context}) {
//   return Container(
//     margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
//     width: MediaQuery.of(context).size.width * .33,
//     child: Column(
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(60),
//           child: Image.network(
//             'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-2379004.jpg&fm=jpg',
//             height: 60,
//             width: 60,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),
//           child: FittedBox(
//             child: Text('Ahmed Selem'),
//           ),
//         ),
//       ],
//     ),
//   );
// }
