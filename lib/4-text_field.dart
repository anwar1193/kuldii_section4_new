import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHidden = true;

  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: emailC,
            autocorrect: false, // pengecekan inputan otomatis
            keyboardType:
                TextInputType.emailAddress, // tipe keybord yang muncul
            textInputAction: TextInputAction
                .next, // Action yang muncul pada saat inputan di klik
            decoration: InputDecoration(
                labelText: "Email",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.email) // Icon Di Depan Inputan
                ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: passwordC,
            autocorrect: false,
            obscureText: isHidden, // supaya hasil ketikan password
            decoration: InputDecoration(
                labelText: "Password",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(Icons.vpn_key), // Icon Di Depan Inputan
                suffixIcon: IconButton(
                    // Icon Di Belakang Inputan (Berbentuk tombol & Bisa di Klik)
                    onPressed: () {
                      if (isHidden == true) {
                        isHidden = false;
                      } else {
                        isHidden = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye))),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              print(
                  "Login Dengan Email ${emailC.text} dan Pass ${passwordC.text} Berhasil!");
            },
            child: Text("LOGIN"),
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          )
        ],
      ),
    );
  }
}
