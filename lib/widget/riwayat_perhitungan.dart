import 'package:flutter/material.dart';

class RiwayatPerhitungan extends StatelessWidget {
  const RiwayatPerhitungan({
    super.key,
    required this.listHasil,
  });

  final List<String> listHasil;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listHasil.length,
        itemBuilder: (context, index){
          return Text(listHasil[index]);
        }
      ),
    );
  }
}