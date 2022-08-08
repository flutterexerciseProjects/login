import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:login/components/background.dart';
import 'package:login/constants/screen_size.dart';
import 'package:login/login/login_page.dart';
import 'package:login/signup/signup_page.dart';

import '../components/custom_colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize  = ScreenSize(context); 
   return Scaffold(
     body: Column(
      children: [
        Background(
          topBackGroundImage: Image.asset("assets/images/main_top.png", width: ScreenSize.screenWidth * 0.35,),
          title: "WELCOME",
          bodyImage: SvgPicture.asset("assets/icons/chat.svg"), 
          body:  
          Column(children: [
           ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  LoginPage();
                  },
                ),
              );
            },
            style: ButtonStyle(
               padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.3, vertical: ScreenSize.screenHeight * 0.01)),
 backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
     // side: BorderSide(color: Colors.red)
    )
  )
),


            child: Text(
              "Login".toUpperCase(),
            ),
          ),

           ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  SignupPage();
                },
              ),
            );
          },
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: ScreenSize.screenWidth * 0.3, vertical: ScreenSize.screenHeight * 0.01)),
 backgroundColor: MaterialStateProperty.all<Color>(kPrimaryLightColor),
 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
     // side: BorderSide(color: Colors.red)
    )
  )
 ), 
          child: Text(
            "Sign Up".toUpperCase(),
            style: TextStyle(color: Colors.black),
          ),
        ),
           ]
          ),
        
          bottomBackgroundImage: Image.asset("assets/images/main_bottom.png", width: ScreenSize.screenWidth *0.2,),
                    ),
         
      ],
      
     ),
   ) ;
  }
}