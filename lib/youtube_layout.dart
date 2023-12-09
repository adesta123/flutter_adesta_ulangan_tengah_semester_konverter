import 'package:flutter/material.dart';

void main(){
  runApp(const Layout());
}

class Layout extends StatelessWidget{
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar layout"),
        ),
        body: Container(
          color: Colors.white,
          //color: Colors.grey,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.widgets,
                    size: 100,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.timeline,
                    size: 100,
                    color: Colors.pink,
                  ),
                  Icon(
                    Icons.widgets,
                    size: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
            // mainAxisAlignment: MainAxisAlignment.start,
            // children: [
            //   const Text("Size Box"), //ukuran eksplisit
            //   // const Text(
            //   //   "Expanded"
            //   // ),
            //   Container(
            //     margin: const EdgeInsets.only(top: 20),
            //     //margin: EdgeInsets.all(10),
            //     color: Colors.red,
            //     child: const Row(
            //       //mainAxisSize: MainAxisSize.max,
            //       //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       //crossAxisAlignment: CrossAxisAlignment.end,
            //       children: [
            //         BlueBox(),
            //         SizedBox(
            //           width: 50,
            //           child: BlueBox(),
            //         ),
            //         BlueBox(),
            //          SizedBox(
            //           width: 10,
            //           child: BlueBox(),
            //         ),
            //         BlueBox(),
            //         // Expanded(
            //         //   flex: 1,
            //         //   child: BlueBox(),
            //         // ),
            //         // Expanded(
            //         //   flex: 3,
            //         //   child: BlueBox(),
            //         // ), //mengambil semua sisa
            //         // BlueBox(),
            //         // BlueBox(),
            //         // Flexible(//memenuhi semua space tergantung fit
            //         //   flex: 1,
            //         //   fit: FlexFit.loose,//mengecil
            //         //   child: BlueBox()
            //         // ),
            //         // Flexible(
            //         //   flex: 2,
            //         //   fit: FlexFit.tight,//melebar atau memanjang
            //         //   child: BlueBox()
            //         // ),
            //         // BlueBox(),
            //         // BlueBox(),
            //       ],
            //     ),
            //   ),
            //   const Text("Spacer"),
            //   Container(
            //     margin: const EdgeInsets.only(top: 20),
            //     color: Colors.amber,
            //     child: const Row(
            //       children: [
            //         BlueBox(),
            //         Spacer(
            //           flex: 3,
            //         ),
            //         BlueBox(),
            //         Spacer(
            //           flex: 1,
            //         ),
            //         BlueBox(),
            //       ],
            //     ),
            //   ),
              // const Text(
              //   "Flexible"
              // ),
              // Container(
              //   margin: const EdgeInsets.all(10),
              //   color: Colors.green,
              //   child: const Row(
              //     //mainAxisSize: MainAxisSize.max,
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     //crossAxisAlignment: CrossAxisAlignment.end,
              //     children: [
              //       Flexible(
              //         flex: 1,
              //         fit: FlexFit.loose,
              //         child: BlueBox(),
              //       ),
              //        Flexible(
              //         flex: 3,
              //         fit: FlexFit.loose,
              //         child: BlueBox(),
              //       ),
              //       BlueBox(),
              //       BlueBox(),
              //     ],
              //   ),
              // ),
            //],
          ),
        ),
      ),
    );
  }
}

class RowTigaBox extends StatelessWidget {
  const RowTigaBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}

class BlueBoxColumn extends StatelessWidget {
  const BlueBoxColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Column(
      mainAxisSize: MainAxisSize.max, //mainaxiszise
      children: [
        //extract widget
        BlueBox(),
        BlueBox(),
        BlueBox(),
      ],
    );
  }
}

class BlueBoxBesar extends StatelessWidget {
  const BlueBoxBesar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }
}