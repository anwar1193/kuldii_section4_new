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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Snack Bars"),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Snack Bar Sudah Muncul",
                  style: TextStyle(color: Colors.white),
                ),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    print("Tidak Jadi Munculkan Snackbar");
                  },
                  textColor: Colors.white,
                ),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 3),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ));
            },
            child: Text(
              "Show Snack-Bar",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
