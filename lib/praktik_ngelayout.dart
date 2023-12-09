import 'package:flutter/material.dart';

void main(){
  runApp(const NgeLayout());
}

class NgeLayout extends StatelessWidget{
  const NgeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Praktik Layout"),
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: const Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter Mc Flutter",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Experienced app developer",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "123 Main Street",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "(123) 456-7890",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.accessibility,
                    size: 40,
                  ),
                  Icon(
                    Icons.timer,
                    size: 40,
                  ),
                  Icon(
                    Icons.phone_android,
                    size: 40,
                  ),
                  Icon(
                    Icons.phone_iphone,
                    size: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}