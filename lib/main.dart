import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: HomePage()
  ));
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro app Flutter")
      ),
      body: Center(
        child: Text(
          "Contador\n$count", 
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          increment();
        },
      ),
    );
  }
}