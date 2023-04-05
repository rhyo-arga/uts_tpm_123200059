import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({Key? key}) : super(key: key);

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  final TextEditingController _sejajar1Controller = TextEditingController();
  final TextEditingController _sejajar2Controller = TextEditingController();
  final TextEditingController _miring1Controller = TextEditingController();
  final TextEditingController _miring2Controller = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();

  double _area = 0.0;
  double _circum = 0.0;

  void _calculate() {
    double sejajar1 = double.parse(_sejajar1Controller.text);
    double sejajar2 = double.parse(_sejajar2Controller.text);
    double miring1 = double.parse(_miring1Controller.text);
    double miring2 = double.parse(_miring2Controller.text);
    double tinggi = double.parse(_tinggiController.text);

    _area = 0.5 * (sejajar1 + sejajar2) * tinggi;
    _circum = sejajar1 + sejajar2 + miring1 + miring2;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         appBar: AppBar(
           title: Text("Perhitungan Trapesium"),
         ),
          body: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _sejajar1Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Sisi Sejajar 1 Trapesium',
                      suffix: Text("cm")
                  ),
                ),
                TextFormField(
                  controller: _sejajar2Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Sisi Sejajar 2 Trapesium',
                      suffix: Text("cm")
                  ),
                ),
                TextFormField(
                  controller: _miring1Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Sisi Miring 1 Trapesium',
                      suffix: Text("cm")
                  ),
                ),
                TextFormField(
                  controller: _miring2Controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Sisi Miring 2 Trapesium',
                      suffix: Text("cm")
                  ),
                ),
                TextFormField(
                  controller: _tinggiController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Masukkan Tinggi Trapesium',
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
                  'Luas: $_area' + ' cm2',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  'Keliling: $_circum' + ' cm',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
