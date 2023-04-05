import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class KalenderPage extends StatefulWidget {
  const KalenderPage({Key? key}) : super(key: key);

  @override
  State<KalenderPage> createState() => _KalenderPageState();
}

class _KalenderPageState extends State<KalenderPage> {
  String _timeString = ' ';
  String _zoneString = 'WIB';
  @override
  void initState() {
    super.initState();
    _timeString = _formatDateTime(DateTime.now(), _zoneString);
    Timer.periodic(Duration(seconds: 1), (Timer t) =>
        _getTime());
  }
  void _getTime() {
    final DateTime now = DateTime.now();
    _timeString = _formatDateTime(now, _zoneString);
    setState(() {});
  }
  String _formatDateTime(DateTime dateTime, String zone) {
    if (zone == 'WIB') {
      dateTime = DateTime.now();
    } else if (zone == 'WITA') {
      dateTime = DateTime.now().add(Duration(hours: 1));
    } else if (zone == 'WIT') {
      dateTime = DateTime.now().add(Duration(hours: 2));
    }
    String formattedDateTime =
        DateFormat('EEEE, dd MMMM yyyy - HH:mm:ss').format(dateTime);
        return formattedDateTime;
        }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Kalender'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _timeString,
              style: TextStyle(fontSize: 35.0),
            ),
            SizedBox(height: 16.0),
            DropdownButton<String>(
              value: _zoneString,
              items: const [
                DropdownMenuItem<String>(
                  child: Text('WIB'),
                  value: 'WIB',
                ),
                DropdownMenuItem<String>(
                  child: Text('WITA'),
                  value: 'WITA',
                ),
                DropdownMenuItem<String>(
                  child: Text('WIT'),
                  value: 'WIT',
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _zoneString = value!;
                  _timeString = _formatDateTime(DateTime.now(),
                      _zoneString);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}