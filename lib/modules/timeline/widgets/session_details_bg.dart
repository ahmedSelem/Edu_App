import 'package:flutter/material.dart';

Widget sessionDetailsBG() {
  return Stack(
    children: [
      Image.network(
        "https://images.pexels.com/photos/6335/man-coffee-cup-pen.jpg?cs=srgb&dl=pexels-kaboompics-com-6335.jpg&fm=jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(.9),
                Colors.white.withOpacity(.3),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0, .8]),
        ),
      ),
    ],
  );
}
