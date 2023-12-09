import 'package:flutter/material.dart';

class InputSuhu extends StatelessWidget {
  const InputSuhu({
    super.key,
    required this.etInput,
  });

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: etInput,
      keyboardType: TextInputType.number, //keyboard angka
      decoration: const InputDecoration(
        labelText: 'Celcius',
        hintText: 'Enter the temperature in celcius',
      ),
    );
  }
}
