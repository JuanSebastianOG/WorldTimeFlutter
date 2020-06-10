import 'package:flutter/material.dart';
import 'package:tutoworldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldtime() async{
    WorldTime instanceW = WorldTime(location: 'Berlin',flag: 'germany',url: 'Europe/Berlin');
    await instanceW.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instanceW.location,
      'flag': instanceW.flag,
      'time' : instanceW.time,
      'isDaytime': instanceW.isDayTime,
    });
  }
  int counter =0;
  @override
  void initState() {
    super.initState();

    setupWorldtime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 80.0,
        ),
      )
    );
  }
}
