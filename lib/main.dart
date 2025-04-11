import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementtCounter() {
    if(_counter != 0) {
      setState(() {
        _counter--;
      });
    }
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_counter", style: const TextStyle(fontSize: 50),),

              if(_counter == 0)
                const Text('A porra do contador esta zerado vadia', style: const TextStyle(fontSize: 50),),
              const SizedBox(height: 50,),
            ],
          ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(onPressed: _incrementCounter,
          child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20,),
          FloatingActionButton(onPressed: _decrementtCounter,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 20,),
          FloatingActionButton(onPressed: _resetCounter,
            child: const Icon(Icons.update),
          ),
          const SizedBox(height: 750,),
        ],

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
