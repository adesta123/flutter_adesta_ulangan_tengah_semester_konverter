import 'package:flutter/material.dart';

class TargetPerhitungan extends StatelessWidget {
  const TargetPerhitungan({
    super.key,
    required this.selectedDropdwon,
    required this.listSatuanSuhu,
    required this.onDropdownChanged,
  });

  final String selectedDropdwon;
  final List<String> listSatuanSuhu;
  final Function onDropdownChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isExpanded: true,
      value: selectedDropdwon,
      //perulangan dropdown
      items: listSatuanSuhu.map((String value){
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {
        onDropdownChanged(value);
      },
    );
  }
}