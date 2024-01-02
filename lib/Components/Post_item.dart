
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_app/Style/App_Text.dart';

class PostItem extends StatelessWidget {

  final String user;
   PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 1),
      child: Column(
        children: [
          Row(
                    children: [
                       Image.asset("assets/temp/user1.jpg", width: 50, height: 50,),
                       SizedBox(
                        width: 16,
                       ),
                       Text(user,style: AppText.subtitle2, ),
                    ],
                  ),
                  //SizedBox(height: 2,),
                  Image.asset("assets/temp/post1.jpg"),
                  SizedBox(height: 2,),
                  Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", style: AppText.subtitle3,),

                  SizedBox(height: 3,),
        ],
      ),
    );
  }
}