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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(30),
              width: double.infinity, // membuat lebar penuh
              height: 150,
              color: Colors.blue,
              child: Text(
                "Dashboard Menu",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Expanded(
                // membuat semacam container, tapi ukuran lebar & tinggi full (yang tersisa)
                child: ListView(
              padding: EdgeInsets
                  .zero, // membuat padding 0, supaya yg tadinya renggang jadi mepet
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Home");
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Product'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print("Pindah Ke Produk");
                  },
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
