 

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/Config/App_Icon_&_Img.dart';
import 'package:test_app/Screens/Main_Page.dart';
import 'package:test_app/Style/App_Colors.dart';

class BottomNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Menus current;
  final Menus name;
  const BottomNavigationItem({super.key, required this.onPressed, required this.icon, required this.current, required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed,
                 icon: ColorFiltered
                (
                  colorFilter: ColorFilter.mode(current==name 
                   ? AppColors.black
                   : Colors.black.withOpacity(0.3)
                   
                   , BlendMode.srcIn),
                  child: SvgPicture.asset(icon, width: 70, height: 80,)),
                  color: AppColors.black,);
  }
}