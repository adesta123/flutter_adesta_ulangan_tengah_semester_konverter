import 'package:flutter/material.dart';
import 'package:ulangan_tengah_semester/widget/input_suhu.dart';
import 'package:ulangan_tengah_semester/widget/konversi_suhu.dart';
import 'package:ulangan_tengah_semester/widget/perhitungan_terakhir.dart';
import 'package:ulangan_tengah_semester/widget/riwayat_perhitungan.dart';
import 'package:ulangan_tengah_semester/widget/target_perhitungan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Konverter Suhu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController etInput = TextEditingController();
  List<String> listSatuanSuhu = ["Kelvin","Reamur","Fahrenheit"];
  String selectedDropdwon = "Kelvin";
  double hasilPerhitungan = 0.0;
  List<String> listHasil = [];

  void onDropdownChanged(Object? value) {
    return setState(() {
      selectedDropdwon = value.toString();
    });
  }

  void konversiSuhu() {
    return setState(() {
      if (etInput.text.isNotEmpty){
        switch(selectedDropdwon){
          case "Kelvin" :
            hasilPerhitungan = int.parse(etInput.text) + 273.15;
            break;
          case "Reamur" :
            hasilPerhitungan = int.parse(etInput.text) * 4 / 5;
            break;
          case "Fahrenheit" :
            hasilPerhitungan = (int.parse(etInput.text) * 9 / 5) + 32;
            break;
        }
        listHasil.add(
          "Konversi dari ${etInput.text} Celcius Ke $selectedDropdwon Dengan Hasil : $hasilPerhitungan"
        );
      } 
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InputSuhu(etInput: etInput),
            const SizedBox(height: 8),
            TargetPerhitungan(
              selectedDropdwon: selectedDropdwon, 
              listSatuanSuhu: listSatuanSuhu, onDropdownChanged: onDropdownChanged,
            ),
            const SizedBox(height: 10),
            const Text(
              "Hasil",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            PerhitunganTerakhir(hasilPerhitungan: hasilPerhitungan),
            const SizedBox(height: 10),
            // ignore: prefer_const_constructors
            KonversiSuhu(
              onPressed: konversiSuhu,
            ),
            const SizedBox(height: 10),
            const Text(
              "Riwayat Konversi",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            // Left Card
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     Card(
            //       child: Container(
            //         width: 150, // Set the width as needed
            //         padding: EdgeInsets.all(16),
            //         child: Column(
            //           children: <Widget>[
            //             Text('Left Card', style: TextStyle(fontSize: 18)),
            //             Text('Content for the left card'),
            //           ],
            //         ),
            //       ),
            //     ),
            //     // Right Card
            //     Card(
            //       child: Container(
            //         width: 150, // Set the width as needed
            //         padding: EdgeInsets.all(16),
            //         child: Column(
            //           children: <Widget>[
            //             Text('Right Card', style: TextStyle(fontSize: 18)),
            //             Text('Content for the right card'),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            RiwayatPerhitungan(listHasil: listHasil), 
          ],
        ),
      ),
    );
  }
}




