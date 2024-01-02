import 'package:flutter/material.dart';
 

class AvatarComp extends StatelessWidget {
  final double size;
  const AvatarComp({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: 
           Image.asset("assets/temp/user1.jpg",  width: size, height: size,));
          
  }
}