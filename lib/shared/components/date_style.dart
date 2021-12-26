import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateStyle extends StatefulWidget {
  final DateTime selectDate;
  final dateFunc, timeFunc;
  final String title;
  const DateStyle({
    Key? key,
    required this.selectDate,
    this.title = 'from',
    required this.dateFunc,
    required this.timeFunc,
  }) : super(key: key);

  @override
  _DateStyleState createState() => _DateStyleState();
}

class _DateStyleState extends State<DateStyle> {
  late DateTime fromSelectDate;

  @override
  void initState() {
    super.initState();
    fromSelectDate = widget.selectDate;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * .01),
              child: Text(
                widget.title,
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
            Container(
              height: 55,
              width: width * .5,
              margin: EdgeInsets.only(bottom: height * .02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xff707070).withOpacity(.2),
                ),
              ),
              child: InkWell(
                  child: Center(
                    child: Text(
                      DateFormat('EEEE, dd/MM/yyyy').format(widget.selectDate),
                    ),
                  ),
                  onTap: widget.dateFunc),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * .035),
            ),
            Container(
              height: 55,
              width: width * .3,
              margin: EdgeInsets.only(bottom: height * .02),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xff707070).withOpacity(.2),
                ),
              ),
              child: InkWell(
                  child: Center(
                    child: Text(
                      DateFormat('hh:mm a').format(widget.selectDate),
                    ),
                  ),
                  onTap: widget.timeFunc),
            ),
          ],
        ),
      ],
    );
  }
}
