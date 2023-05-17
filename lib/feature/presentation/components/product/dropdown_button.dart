import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_color.dart';

class DropDownButtonWidget extends StatelessWidget {
  final String item1;
  final String item2;
  final String item3;

  DropDownButtonWidget(
      {Key? key, required this.item1, required this.item2, required this.item3})
      : super(key: key);
  @override
  late String dropdownvalue = item1;
  late var items = [
    item1,
    item2,
    item2,
    item3,
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Expanded(
        child: Container(
          decoration: const BoxDecoration(
              color: AppColor.gray,
              borderRadius: BorderRadius.all(Radius.circular(8))
          ),
          child: DropdownButton(
            isExpanded: true,
            alignment: Alignment.centerLeft,
            dropdownColor: AppColor.gray,
            style: const TextStyle(
              color: AppColor.black,
            ),
            hint: Text(
                dropdownvalue
            ),
            icon: const Icon(Icons.keyboard_arrow_down, color: AppColor.pink),
            underline: Container(color: Colors.transparent),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? value) {
              dropdownvalue = value!;
            },
          ),
        ),
      ),
    );
  }

}