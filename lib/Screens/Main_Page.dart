 

// ignore_for_file: unrelated_type_equality_checks

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/Components/BottomNavigationItem.dart';
import 'package:test_app/Config/App_Icon_&_Img.dart';
import 'package:test_app/Screens/Home_Page.dart';
import 'package:test_app/Screens/User_Profile.dart';
import 'package:test_app/Style/App_Colors.dart';

class MainPage extends StatefulWidget {
     MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Menus currentIndex = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
       
      body:  Pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigationBar(currentIndex: currentIndex, onTap:  (value){
        setState(() {
          currentIndex= value;
        });
      })
      
      // BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.ic_home, width: 50,height: 50,), label: "Home"),
      //     BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.ic_favorite, width: 50,height: 50,), label: "Favorite"),
      //     BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.ic_add, width: 50,height: 50,), label: "Add"),
      //     BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.ic_message, width: 50,height: 50,), label: "Message"),
      //     BottomNavigationBarItem(icon: SvgPicture.asset(AppIcons.ic_user, width: 50,height: 50,), label: "User"),
      //   ],
      //   currentIndex: currentIndex,
      //   onTap: (index){
      //     setState(() {
      //       currentIndex=index;
      //     });
           
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   backgroundColor: AppColors.primary,
      //   //unselectedItemColor: Colors.white,
      //   selectedItemColor: Colors.black,
         
         
      // ),
    );
  }

  final Pages=[
    HomePage(),
    Center(child: Text("Favorite")),
    Center(child: Text("Add post")),
    Center(child: Text("Message")),
    UserProfile(),
  ];
}

enum Menus{
  home,
  favorite,
  add,
  message,
  user
}

class MyBottomNavigationBar extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
    MyBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 2),
      height: 87,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
             
            child: Container(
              margin: EdgeInsets.all(16),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.white
              ),
              child: Row(
                children: [
                   Expanded(
                     child: BottomNavigationItem(onPressed: ()=> onTap(Menus.home), icon: AppIcons.ic_home, current: currentIndex, name: Menus.home)
                     ),
                      Expanded(
                    child: BottomNavigationItem(onPressed: ()=> onTap(Menus.favorite), icon: AppIcons.ic_favorite, current: currentIndex, name: Menus.favorite)
            
                     ),
                     Spacer(),
                      Expanded(
                    child: BottomNavigationItem(onPressed: ()=> onTap(Menus.message), icon: AppIcons.ic_message, current: currentIndex, name: Menus.message)
                     ),
                      Expanded(
                    child: BottomNavigationItem(onPressed: ()=> onTap(Menus.user), icon: AppIcons.ic_user, current: currentIndex, name: Menus.user)
                     ),
          
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: ()=>onTap(Menus.add),
              child: Container(
                 width: 60,
                 height: 60,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(currentIndex==Menus.add 
                     ? AppColors.black
                     : Colors.black.withOpacity(0.3)
                     
                     , BlendMode.srcIn),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(AppIcons.ic_add),
                  )), 
              ),
            ),
          )
        ],
      ),
    );
  }
}