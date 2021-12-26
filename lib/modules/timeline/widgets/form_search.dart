import 'package:flutter/material.dart';
import 'package:pear_education/shared/components/components.dart';
import 'package:pear_education/shared/components/date_style.dart';

class FormSearch extends StatefulWidget {
  const FormSearch({Key? key}) : super(key: key);

  @override
  _FormSearchState createState() => _FormSearchState();
}

class _FormSearchState extends State<FormSearch> {
  late DateTime fromSelectDate, toSelectDate;

  late FocusNode sessionNameNode;

  @override
  void initState() {
    super.initState();
    sessionNameNode = FocusNode();
    fromSelectDate = toSelectDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Form(
            child: Column(
              children: [
                inputStyle(
                  context: context,
                  labelText: '',
                  titleTextForm: 'Session Name',
                  node: sessionNameNode,
                  textInputAction: TextInputAction.next,
                ),
                DateStyle(
                  selectDate: fromSelectDate,
                  dateFunc: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: fromSelectDate,
                      firstDate: DateTime.now().subtract(
                        Duration(
                          days: 45,
                        ),
                      ),
                      lastDate: DateTime.now().add(
                        Duration(
                          days: 45,
                        ),
                      ),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        fromSelectDate = DateTime(
                          pickedDate.year,
                          pickedDate.month,
                          pickedDate.day,
                          fromSelectDate.hour,
                          fromSelectDate.minute,
                        );
                      });
                    }
                    setState(() {});
                  },
                  timeFunc: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(fromSelectDate),
                    );
                    if (pickedTime != null) {
                      setState(() {
                        fromSelectDate = DateTime(
                          fromSelectDate.year,
                          fromSelectDate.month,
                          fromSelectDate.day,
                          pickedTime.hour,
                          pickedTime.minute,
                        );
                      });
                    }
                    setState(() {});
                  },
                ),
                DateStyle(
                  selectDate: toSelectDate,
                  title: 'To',
                  dateFunc: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: toSelectDate,
                      firstDate: DateTime.now().subtract(
                        Duration(
                          days: 45,
                        ),
                      ),
                      lastDate: DateTime.now().add(
                        Duration(
                          days: 45,
                        ),
                      ),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        toSelectDate = DateTime(
                          pickedDate.year,
                          pickedDate.month,
                          pickedDate.day,
                          toSelectDate.hour,
                          toSelectDate.minute,
                        );
                      });
                    }
                  },
                  timeFunc: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(toSelectDate),
                    );
                    if (pickedTime != null) {
                      setState(() {
                        toSelectDate = DateTime(
                          toSelectDate.year,
                          toSelectDate.month,
                          toSelectDate.day,
                          pickedTime.hour,
                          pickedTime.minute,
                        );
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          buttonModalSheetCustom(
            context: context,
            width: width,
            title: 'Apply Filter',
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
