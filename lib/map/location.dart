

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:login/components/custom_colors.dart';
import 'package:login/constants/screen_size.dart';
import 'package:login/controller/location_controller.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  LocationController loc = LocationController(); 
  late Response response;
  var val;

  getLocation()async{
    val =  (await loc.determinePosition()).toString() ;
  }
  // sendApi()async {
  // var dio = Dio();
  // response = await dio.post('/', data: {val});
  // }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      height: ScreenSize.screenHeight,
      width: ScreenSize.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           ElevatedButton(
              onPressed: () {
                setState(() {
                getLocation();
                });
                
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.1, vertical: ScreenSize.screenHeight * 0.01)),
           backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
               // side: BorderSide(color: Colors.red)
              )
            )
           ), 
              child: Text(
                "get location".toUpperCase(),
                style: TextStyle(color: Colors.white),
              ),
            ),

            Text(
               '$val',
                style: TextStyle(color: Colors.black, fontSize: 15),)
        ],
      ),
    )
   );
  }
}