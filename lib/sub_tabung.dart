import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabungPage extends StatefulWidget {
  const TabungPage({Key? key}) : super(key: key);

  @override
  State<TabungPage> createState() => _TabungPageState();
}

class _TabungPageState extends State<TabungPage> {
  final TextEditingController _rController = TextEditingController();
  final TextEditingController _tController = TextEditingController();

  double _volume = 0.0;
  double _surface = 0.0;

  void _calculate() {
    double r = double.parse(_rController.text);
    double t = double.parse(_tController.text);

    _volume = 3.14 * r * r * t;
    _surface = 2 * 3.14 * r * (r + t);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Perhitungan Tabung"),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _rController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Masukkan Jari-Jari Lingkaran',
                    suffix: Text("cm")
                ),
              ),
              TextField(
                controller: _tController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Masukkan Tinggi Tabung',
                    suffix: Text("cm")
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculate,
                child: Text('Hasil'),
              ),
              SizedBox(height: 16),
              Text(
                'Volume: $_volume' + ' cm3',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Luas Permukaan: $_surface' + ' cm2',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}