import 'package:flutter/widgets.dart';

 class ScreenSize {
 
 static late MediaQueryData _mediaQueryData;
 static late double screenWidth;
 static late double screenHeight;
 static late Orientation orientation;

  ScreenSize(BuildContext context) {
   _mediaQueryData = MediaQuery.of(context);
   screenWidth = _mediaQueryData.size.width;
   screenHeight = _mediaQueryData.size.height;
   orientation = _mediaQueryData.orientation;
 }
}