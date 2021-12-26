import 'package:flutter/material.dart';
import 'package:pear_education/shared/components/components.dart';

class SecondStep extends StatefulWidget {
  const SecondStep({Key? key}) : super(key: key);

  @override
  _SecondStepState createState() => _SecondStepState();
}

class _SecondStepState extends State<SecondStep> {
  late FocusNode fullNameNode, emailNode, schoolNode, parentPhoneNode;
  List dropDownList = ['Text 1, Text 2, Text 3'];

  @override
  void initState() {
    super.initState();
    fullNameNode = FocusNode();
    emailNode = FocusNode();
    parentPhoneNode = FocusNode();
    schoolNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    fullNameNode.dispose();
    emailNode.dispose();
    parentPhoneNode.dispose();
    schoolNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: width * .04,
          ),
          inputStyle(
            context: context,
            labelText: 'Full Name',
            node: fullNameNode,
            textInputAction: TextInputAction.next,
            filedSubmitted: (value) {
              emailNode.requestFocus();
            },
          ),
          inputStyle(
            context: context,
            labelText: 'Email',
            node: emailNode,
            textInputAction: TextInputAction.next,
            filedSubmitted: (value) {
              schoolNode.requestFocus();
            },
          ),
          inputStyle(
            context: context,
            labelText: 'Scool / faculty Name',
            node: schoolNode,
            textInputAction: TextInputAction.next,
            filedSubmitted: (value) {
              parentPhoneNode.requestFocus();
            },
          ),
          inputStyle(
            context: context,
            labelText: 'Parent Phone',
            node: parentPhoneNode,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.phone,
          ),
          dropDownStyle(
            context: context,
            dropDownList: dropDownList,
            onTap: () {},
            onChange: (value) {},
          ),
          dropDownStyle(
            context: context,
            dropDownList: dropDownList,
            onTap: () {},
            onChange: (value) {},
          ),
          buttonCustom(
            context: context,
            width: width,
            margin: height * .01,
            title: 'Finish !',
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                isScrollControlled: true,
                context: context,
                builder: (BuildContext _) {
                  return modalSheetCustom(
                    context: context,
                    height: .65,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * .05),
                          child: Image.asset(
                            'assets/images/under-review1.png',
                            scale: 1.2,
                          ),
                        ),
                        Text(
                          'Thanks For providing your Info Welcome to our educational world, your success is our Goal .',
                          textAlign: TextAlign.center,
                        ),
                        buttonModalSheetCustom(
                          context: context,
                          width: width,
                          title: 'Done',
                          onPressed: () {}
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
