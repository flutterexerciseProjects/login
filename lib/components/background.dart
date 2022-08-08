import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/constants/screen_size.dart';

class Background extends StatelessWidget {
  final Image topBackGroundImage;
  final SvgPicture bodyImage;
  final Image? bottomBackgroundImage;
  final double? bottomImgaeLocation;
final String title;
  final Widget body;
  const  Background({Key? key,
    required  this.topBackGroundImage,
    required this.title,
    required this.bodyImage,
    required this.body,
    required this.bottomBackgroundImage,
     this.bottomImgaeLocation

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screenHeight ,
      child: Stack(
        
        children: [
            
            Center(child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                Text(title,style: TextStyle(fontWeight: FontWeight.bold)), 
                SizedBox(height: 15 ,),
                bodyImage,
                SizedBox(height: 40 ,),
                body,
              ],
            )),
           
            
        Positioned(child: topBackGroundImage , ),
    Positioned(child: bottomBackgroundImage!, bottom:  0, right: bottomImgaeLocation, )
             ],
      ),
    );
  }
}