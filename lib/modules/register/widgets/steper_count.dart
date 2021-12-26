import 'package:flutter/material.dart';

Widget steperCount(
    {@required BuildContext? context, @required int? currentPage}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context!).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            '1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          border: Border.all(
            color: (currentPage == 1)
                ? Theme.of(context).primaryColor
                : Colors.black12,
          ),
        ),
      ),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: (currentPage == 1)
              ? Theme.of(context).primaryColor
              : Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            '2',
            style: TextStyle(
              color: (currentPage == 1) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}
