import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pear_education/shared/components/components.dart';

Widget formFilterCourseScreen({
  required BuildContext context,
  required double width,
  required double height,
}) {
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
          height: height * .50,
          child: ListView(
            children: [
              _filterTitle(title: 'Rate'),
              Wrap(
                children: [
                  _itemFilter(context: context, value: '0 - 1'),
                  _itemFilter(
                    context: context,
                    value: '1 - 2',
                    isActive: true,
                  ),
                  _itemFilter(context: context, value: '2 - 3'),
                  _itemFilter(context: context, value: '3 - 4'),
                  _itemFilter(context: context, value: '4 - 5'),
                ],
              ),
              _filterTitle(title: 'Subcategory'),
              Wrap(
                children: [
                  _itemFilter(context: context, value: 'HR'),
                  _itemFilter(context: context, value: 'TOT'),
                  _itemFilter(
                      context: context, value: 'Supply Chain Managment'),
                  _itemFilter(context: context, value: 'HMP'),
                  _itemFilter(context: context, value: 'Pharmacy Management'),
                  _itemFilter(
                    context: context,
                    value: 'Customer Management',
                    isActive: true,
                  ),
                ],
              ),
              _filterTitle(title: 'Price'),
              Wrap(
                children: [
                  _itemFilter(context: context, value: 'Paid'),
                  _itemFilter(context: context, value: 'Free', isActive: true),
                ],
              ),
            ],
          ),
        ),
        buttonModalSheetCustom(
          context: context,
          width: width,
          title: 'Apply Filter',
          onPressed: () {},
        ),
      ],
    ),
  );
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

Widget _itemFilter({
  required BuildContext context,
  required String value,
  bool isActive = false,
}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: (isActive)
            ? Theme.of(context).primaryColor
            : Colors.grey.withOpacity(.5),
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
    margin: EdgeInsets.only(right: 9, bottom: 10),
    child: Text(
      value,
      style: TextStyle(
        fontSize: 13,
        color: (isActive) ? Theme.of(context).primaryColor : Colors.black,
        fontWeight: (isActive) ? FontWeight.bold : FontWeight.normal,
      ),
    ),
  );
}
