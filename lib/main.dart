import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Achievements.dart';
void main() async {
  runApp(const MyApp());
  final prefs = await SharedPreferences.getInstance();
  int memcount = prefs.getInt('memcount');
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
  var memcount = 0;
  @override
  void initState() {
    super.initState();
    getIntFromLocalMemory('COUNTER_NUMBER').then((value) =>
    memcount = value
    );
  }

  void _incrementCounter() async {
    setState(() async {
      memcount++;
      saveIntInLocalMemory('COUNTER_NUMBER', memcount);
      if (memcount == 100)
      {
        saveIntInLocalMemory('COUNTER_NUMBER', memcount);
        unlockAchievement('oldaf', 'wow, ur old.', 'age');
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ur age:',
            ),
            Text(
              '$memcount',
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
  Future<int> getIntFromLocalMemory(String key) async {
    var pref = await SharedPreferences.getInstance();
    var number = pref.getInt(key) ?? 0;
    return number;
  }

  /*
  * It returns the saved the int value from the memory.
  * */
  Future<void> saveIntInLocalMemory(String key, int value) async {
    var pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }
}
