import 'package:flutter/material.dart';

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
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity, //自動適應任意畫面大小
      ),
      home: const MyHomePage(title: 'TEST'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

dynamic r = Colors.red;
dynamic b = Colors.blue;
dynamic g = Colors.green;
dynamic ttt;

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter%3==0){
        ttt = b;
      }
      else if(_counter%3==1){
        ttt = r;
      }
      else if(_counter%3==2){
        ttt = g;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: new Text(
              '點擊更改顏色',
              style: TextStyle(
              fontSize: 20
              )
            ),
          ),
        alignment: Alignment.center,
        width: 300.0,
        height: 300.0,
        color: ttt,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.navigation),
        backgroundColor: ttt,
      ), 
    );
  }
}
