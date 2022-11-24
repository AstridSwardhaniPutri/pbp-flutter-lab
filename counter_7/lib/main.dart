import 'package:flutter/material.dart';
import 'package:counter_7/tambahBudget.dart';
import 'package:counter_7/dataBudget.dart';

import 'package:counter_7/mywatchlist_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }

  // This widget is the root of your application.
  // @override
  // State<MyApp> createState() => _MyAppState();

}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Program Counter';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _evenOdd="GANJIL";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      // if (_counter%2==0){
      //   _evenOdd="GENAP";
      // }else{
      //   _evenOdd="GANJIL";
      // }
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;

    });
  }

  @override
  Widget build(BuildContext context) {
    bool _greaterThanZero=_counter>0;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        // Menambahkan drawer menu
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const tambahBudgetPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const dataBudgetPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchlistDetailPage()),
                  );
                },
              ),
            ],
          ),
        ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if(_counter%2==0)...[
              Text("GENAP",style:TextStyle(color:Colors.red)),
            ]else...[
              Text("GANJIL",style:TextStyle(color:Colors.blue))
            ],
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children:<Widget>[
            FloatingActionButton(
              onPressed:_greaterThanZero? _decrementCounter:null,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),

            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            )
          ],
        ),
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}

//refrence:
//https://www.fluttercampus.com/guide/131/how-to-use-conditional-statement-if-else-on-widget-in-flutter/
// https://docs.flutter.dev/codelabs/layout-basics#mainaxisalignment-property