import 'package:flutter/material.dart';

class PerhitunganTerakhir extends StatelessWidget {
  const PerhitunganTerakhir({
    super.key,
    required this.hasilPerhitungan,
  });

  final double hasilPerhitungan;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$hasilPerhitungan",
      style: const TextStyle(
        fontSize: 32,
      ),
    );
  }
}