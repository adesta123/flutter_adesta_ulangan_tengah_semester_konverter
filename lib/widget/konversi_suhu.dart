import 'package:flutter/material.dart';

class KonversiSuhu extends StatelessWidget {
  const KonversiSuhu({
    super.key, required this.onPressed,
  });

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {
              onPressed ();
            }, 
            child: const Text("Konversi Suhu"),
          ),
        ),
      ],
    );
  }
}
