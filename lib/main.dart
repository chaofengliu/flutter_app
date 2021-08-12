import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}
class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter盒子模型',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('盒子模型'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: Container(
              color: Colors.red,
              margin: EdgeInsets.fromLTRB(10, 5, 20, 30),
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: Colors.white60,
                child: Text("这是一段文字"),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List _imageNames = [
    {'image':'images/icon.png','text':'刘超峰'},
    {'image':'images/test.jpeg','text':'测试'}
  ];

  int _index = 0;

  void _onSwitch(){
    setState(() {
      _index = (++ _index) % _imageNames.length;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          width: 500,
          height: 500,
          // color: Colors.green,
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.only(top: 10,bottom: 10),
                child: Image.asset(
                  _imageNames[_index]['image'],
                  fit:BoxFit.cover,
                ),
              ),
              Text(
                _imageNames[_index]['text'],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onSwitch,
        tooltip: '切换',
        child: const Icon(Icons.swap_horizontal_circle_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
