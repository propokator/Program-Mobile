import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parsing ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Parsing'),
        ),
        body: Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Panggil(
                  name: "Rose Hudston",
                  address: ' Medan ',
                  gbr: '2.jpg',
                  warna: Colors.red),
              Panggil(
                  name: "Mike Hudston",
                  address: ' Bali ',
                  gbr: '6.jpg',
                  warna: Colors.blue),
              Panggil(
                  name: "Max Hudston",
                  address: ' Bandung ',
                  gbr: '8.jpg',
                  warna: Colors.green),
              Panggil(
                  name: "Andrew Matthew",
                  address: ' Jogjakarta ',
                  gbr: '28.jpg',
                  warna: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}

class Panggil extends StatelessWidget {
  Panggil({this.name, this.address, this.gbr, this.warna});
  final String name;
  final String address;
  final String gbr;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Row(
        children: <Widget>[
          Image(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/propokator/Program-Mobile/master/' +
                      gbr),
              height: 100.0),
          Text(name, style: TextStyle(color: warna)),
          Text(address),
        ],
      ),
    );
  }
}
