import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts_tpm_123200059/login_page.dart';
import 'package:uts_tpm_123200059/sub_detailprofile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("Profil"),
        ),
        body: Container(
          height: double.infinity,
          padding: const EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Card(
                elevation: 10,
                child: Container(
                  height: 230,
                  width: 350,
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: 130,
                          child: Image.asset('images/rhyoargasiwi.jpg'),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Nama : Rhyo Argasiwi',
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'NIM  : 123200059',
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()
                        )
                    );
                  },
                  child: Text("Detail",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()
                        )
                    );
                  },
                  child: Text("Log Out",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}