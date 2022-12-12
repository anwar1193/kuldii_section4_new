import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Ini Judul"),
                  content: Text(
                      "Ini adalah contoh dialog yang cukup panjang, sepanjang perasaanku saat memikirkan betapa indahnya dirimu..."),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("CANCEL")),
                    ElevatedButton(onPressed: () {}, child: Text("OK"))
                  ],
                ),
              );
            },
            child: Text("Show Dialog")),
      ),
    );
  }
}
