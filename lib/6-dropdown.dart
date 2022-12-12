import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List Dropdown
  final List dataku = [
    {"judul": "Pilihan ke - 1", "data": 1},
    {"judul": "Pilihan ke - 2", "data": 2},
    {"judul": "Pilihan ke - 3", "data": 3},
  ];

  // Definisikan dataAwal untuk default nilai yang terpilih
  late int dataAwal;

  // Tinggal tulis init -> enter
  @override
  void initState() {
    // Data Default = Data pertama (karena index 0), ini boleh diganti
    dataAwal = dataku[0]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: DropdownButton<int>(
            value: dataAwal,
            items: dataku
                .map((e) => DropdownMenuItem(
                      child: Text("${e['judul']}"),
                      value: e['data'] as int,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
