import 'package:flutter/material.dart';
import 'package:pear_education/modules/instructors/screens/instructor_details_screen.dart';
import 'package:pear_education/modules/instructors/widgets/form_filter.dart';
import 'package:pear_education/shared/components/components.dart';

class InstructorsScreen extends StatefulWidget {
  const InstructorsScreen({Key? key}) : super(key: key);

  @override
  _InstructorsScreenState createState() => _InstructorsScreenState();
}

class _InstructorsScreenState extends State<InstructorsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text('Instructors'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: secTitleFilter(
              context: context,
              width: width,
              title: 'All Instructors',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return modalSheetCustom(
                      context: context,
                      height: .87,
                      child: FormFilterInstructorScreen(),
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Wrap(
                  children: [
                    instructorItem(
                      context: context,
                      onTab: () {
                        Navigator.of(context).pushReplacementNamed(
                            InstructorDetailsScreen.routeName);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
