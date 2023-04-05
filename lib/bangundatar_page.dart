import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_tpm_123200059/sub_tabung.dart';
import 'package:uts_tpm_123200059/sub_trapesium.dart';

class BangunDatar extends StatefulWidget {
  const BangunDatar({Key? key}) : super(key: key);

  @override
  State<BangunDatar> createState() => _BangunDatarState();
}

class _BangunDatarState extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Bangun Datar"),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TrapesiumPage()
                            ));
                      },
                      child: Text("Perhitungan Trapesium",
                      style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => TabungPage()
                            ));
                  },
                      child: Text("Perhitungan Tabung",
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
