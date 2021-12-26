import 'package:flutter/material.dart';

// Sign In With Socail Media Items
Widget signWithSocialMedia({
  required BuildContext context,
  String? image,
  String? title,
  final function,
}) {
  return GestureDetector(
    child: Container(
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff707070).withOpacity(.2),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image!),
          SizedBox(width: 20),
          Text(
            title!,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    ),
    onTap: function,
  );
}

// Input Widget Shared In All Project
Widget inputStyle({
  required BuildContext context,
  bool suffix = false,
  bool prefix = false,
  bool obscureText = false,
  TextInputType textInputType = TextInputType.text,
  String initialValue = '',
  Widget? suffixIcon,
  Widget? prefixIcon,
  String? titleTextForm,
  required String labelText,
  required FocusNode node,
  final filedSubmitted,
  required TextInputAction textInputAction,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (titleTextForm != null)
        Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .01),
          child: Text(
            titleTextForm,
            style: TextStyle(
              color: Colors.black45,
            ),
          ),
        ),
      Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
        height: 55,
        child: TextFormField(
          cursorColor: Colors.black54,
          focusNode: node,
          onFieldSubmitted: filedSubmitted,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          obscureText: obscureText,
          initialValue: initialValue,
          decoration: InputDecoration(
            suffix: (suffix == true) ? suffixIcon : null,
            prefix: (prefix == true) ? prefixIcon : null,
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.black54, fontSize: 13),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Color(0xff707070).withOpacity(.2)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Color(0xff707070).withOpacity(.2)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Color(0xff707070).withOpacity(.2)),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Color(0xff707070).withOpacity(.2)),
            ),
          ),
        ),
      ),
    ],
  );
}

// DropDown Widget Shared In All Project

Widget dropDownStyle({
  required BuildContext context,
  double height = 55,
  required List<dynamic> dropDownList,
  required final onTap,
  required final onChange,
}) {
  return Container(
    height: height,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xff707070).withOpacity(.2),
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
    padding: EdgeInsets.symmetric(horizontal: 12),
    child: DropdownButtonHideUnderline(
      child: DropdownButton(
        isExpanded: true,
        items: dropDownList.map((e) {
          return DropdownMenuItem(
            child: Text(
              e,
              style: TextStyle(color: Colors.black54),
            ),
            value: e,
            onTap: onTap,
          );
        }).toList(),
        onChanged: onChange,
      ),
    ),
  );
}

// Button Widget Shared In All Project
Widget buttonCustom({
  required BuildContext context,
  required double width,
  required double margin,
  required String title,
  double borderRadius = 50,
  double height = 50,
  required final onPressed,
  bool isFillBackgroundColor = true,
}) {
  return Container(
    width: width * .9,
    height: height,
    margin: EdgeInsets.only(
      top: margin,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: (isFillBackgroundColor == true)
          ? Theme.of(context).primaryColor
          : Colors.grey[50],
    ),
    child: TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: (isFillBackgroundColor == true) ? Colors.white : Colors.black,
          fontSize: 18,
        ),
      ),
      onPressed: onPressed,
    ),
  );
}

// ModalSheetBottom Widget In All Project
Widget modalSheetCustom({
  required BuildContext context,
  required Widget child,
  double height = .5,
}) {
  return Container(
    height: MediaQuery.of(context).size.height * height,
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .15,
          height: 5,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .015),
          decoration: BoxDecoration(
            color: Colors.black26,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child,
      ],
    ),
  );
}

Widget buttonModalSheetCustom({
  required BuildContext context,
  required double width,
  required String title,
  required final onPressed,
  marginTop = .055,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: Colors.black12),
      ),
    ),
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * marginTop,
    ),
    child: buttonCustom(
      context: context,
      width: width,
      margin: MediaQuery.of(context).size.height * .035,
      title: title,
      onPressed: onPressed,
    ),
  );
}

Widget secTitle(
    {required String title,
    double paddingLR = 20,
    double paddingB = 30,
    double paddingT: 15}) {
  return Container(
    padding: EdgeInsets.fromLTRB(paddingLR, paddingT, paddingLR, paddingB),
    child: Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget secTitleFilter(
    {required BuildContext context,
    required double width,
    required String title,
    double height = .65,
    final onPressed}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      secTitle(
        title: title,
        paddingLR: 0,
        paddingB: 0,
        paddingT: 0,
      ),
      Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(100),
        ),
        height: 40,
        width: 40,
        child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            ),
            onPressed: onPressed),
      ),
    ],
  );
}

Widget instructorItem({required BuildContext context, required final onTab}) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
      width: MediaQuery.of(context).size.width * .33,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.network(
              'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?cs=srgb&dl=pexels-italo-melo-2379004.jpg&fm=jpg',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.height * .01),
            child: FittedBox(
              child: Text('Ahmed Selem'),
            ),
          ),
        ],
      ),
    ),
    onTap: onTab,
  );
}
