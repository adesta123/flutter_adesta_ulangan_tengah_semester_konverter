import 'package:flutter/material.dart';

void main() {
  runApp(const Theapp());
}

class Theapp extends StatelessWidget {
  const Theapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: const Column(
          children: [
            Row(
              children: [
                HeroDota(
                  heroId: '1', 
                  heroName: 'Mortred'
                ),
              ],
            ),
            Row(
              children: [
                HeroDota(
                  heroId: '2', 
                  heroName: 'Baratrhum'
                ),
              ],
            ),
            Row(
              children: [
                HeroDota(
                  heroId: '3', 
                  heroName: 'Viper'
                ),
              ],
            ),
            Row(
              children: [
                HeroDota(
                  heroId: '4', 
                  heroName: 'Krobelus'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeroDota extends StatelessWidget {
  const HeroDota({
    Key? key,
    required this.heroId,
    required this.heroName,
  }) : super(key: key);

  final String heroId;
  final String heroName;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(heroId),
          const SizedBox(width: 10),
          Text(heroName),
        ],
      ),
    );
  }
}