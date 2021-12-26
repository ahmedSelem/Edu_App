
import 'package:flutter/material.dart';

Widget informationItem({
  required BuildContext context,
  required double spaceAround,
  required String title,
  required String value,
  bool isShowBtn = false,
  final onPressed,
}) {
  return Container(
    padding: EdgeInsets.only(bottom: spaceAround),
    margin: EdgeInsets.only(bottom: spaceAround),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.grey.withOpacity(.07),
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Colors.black54,
          ),
        ),
        (isShowBtn)
            ? Container(
                height: 19.5,
                child: IconButton(
                  icon: Icon(
                    Icons.edit_sharp,
                    color: Theme.of(context).primaryColor,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: onPressed,
                ),
              )
            : Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
      ],
    ),
  );
}
