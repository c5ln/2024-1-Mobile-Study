import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Week2"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: 
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            Container(
                width:100,
                height: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color : Colors.blue, 
                  borderRadius: BorderRadius.circular(10),
                  ),
                ),
            Container(
              width:100,
              height: 100,
              decoration: BoxDecoration(
                  color : Colors.red, 
                  borderRadius: BorderRadius.circular(10),
              ),
              ),
          ],
          ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:100,
                height: 100,
                margin:EdgeInsets.fromLTRB(10,0,10,0),
                decoration: BoxDecoration(
                  color : Colors.yellow, 
                  borderRadius: BorderRadius.circular(10),
                  ),
                ),
            Container(
              width:100,
              height: 100,
              decoration: BoxDecoration(
                  color : Colors.green, 
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
          ),
          Text("으뜸파이썬"),
      ],
      ),
      );
  }
}
