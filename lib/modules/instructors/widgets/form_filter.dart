import 'package:flutter/material.dart';
import 'package:pear_education/shared/components/components.dart';

class FormFilterInstructorScreen extends StatefulWidget {
  const FormFilterInstructorScreen({Key? key}) : super(key: key);

  @override
  _FormFilterInstructorScreenState createState() =>
      _FormFilterInstructorScreenState();
}

class _FormFilterInstructorScreenState
    extends State<FormFilterInstructorScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        vertical: width * .03,
        horizontal: width * .05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Text(
              'Filter',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Text(
              'Pick The Filters To specify what you are looking for.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            height: height * .53,
            child: ListView(
              children: [
                _filterTitle(title: 'Levels'),
                Container(
                  height: height * .13,
                  margin: EdgeInsets.only(top: 10),
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _levelItem(
                        width: width,
                        title: 'All Levels',
                        image:
                            'https://pear-education.com/Attachments/EducationalLevel/1/134.png',
                      ),
                      _levelItem(
                        width: width,
                        title: 'University Level',
                        image:
                            'https://pear-education.com/customs/images/DefaultImage/Level/01.png',
                      ),
                      _levelItem(
                        width: width,
                        title: 'Preparatory Level',
                        image:
                            'https://pear-education.com/customs/images/DefaultImage/Level/01.png',
                      ),
                      _levelItem(
                        width: width,
                        title: 'Preparatory Level',
                        image:
                            'https://pear-education.com/Attachments/EducationalLevel/1/134.png',
                      ),
                    ],
                  ),
                ),
                _filterTitle(title: 'Subject'),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Wrap(
                    children: [
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                      _subjectItem(width: width),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * .011),
            child: Row(
              children: [
                _selectedData(title: 'University Level'),
                _selectedData(title: 'Chemistry'),
              ],
            ),
          ),
          buttonModalSheetCustom(
            context: context,
            width: width,
            marginTop: .01,
            title: 'Apply Filter',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

Widget _filterTitle({required String title}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10, top: 14),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

Widget _levelItem(
    {required double width, required String image, required String title}) {
  return Container(
    width: width * .35,
    child: Column(
      children: [
        Image.network(
          image,
          height: 60,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _subjectItem({required double width}) {
  return Container(
    width: width * .22,
    margin: EdgeInsets.only(bottom: 14),
    child: Column(
      children: [
        Image.network(
          'https://pear-education.com/customs/images/DefaultImage/Subject/03.png',
          height: 50,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: FittedBox(
            child: Text(
              'Chemistry',
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    ),
  );
}

Widget _selectedData({required String title}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
      title,
      style: TextStyle(fontSize: 10),
    ),
  );
}
