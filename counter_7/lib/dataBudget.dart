import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/tambahBudget.dart';

class dataBudgetPage extends StatefulWidget {
  const dataBudgetPage({super.key});

  @override
  State<dataBudgetPage> createState() => _dataBudgetPageState();
}

class dataBudget {
  static List<dataBudget> budgets = [];
  String _judul="";
  int nominal;
  String _listJenisData;

  dataBudget({
    required this._judul,
    required this.nominal,
    required this._listJenisData,
  });

  static void tambahBudget({
    required _judul,
    required nominal,
    required _listJenisData,
  }) {
    budgets.add(dataBudget(
        _judul: _judul, nominal: nominal, _listJenisData: _listJenisData));
  }
}

class _dataBudgetPageState extends State<dataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
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
          ],
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return Card(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(dataBudget.budgets[index]._judul,
                style: const TextStyle (fontSize:24),
                textAlign:TextAlign.left,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Text(dataBudget.budgets[index].nominal.toString(),
                      style: const TextStyle (fontSize:20),
                    ),
                    Text(dataBudget.budgets[index]._listJenisData,
                      style: const TextStyle (fontSize:20),
                    ),
                  ]
                )
              ]
            )
          )
        );
      })
    );
  }
}