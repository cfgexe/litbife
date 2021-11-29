import 'package:flutter/material.dart';
import 'Achievements.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LitBife',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Name: sample text'),
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
  int _counter = 0;
  age3() {
    if (_counter != 3) Exception("Age is NOT 3.");
    // ignore: avoid_print
    print("ur 3 now. grow up.");
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 3) age3();
      if (_counter == 100) unlockAchievement('oldaf', 'wow, ur old.', 'age');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ur age:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        hoverColor: Colors.green,
        focusColor: Colors.green,
        splashColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
