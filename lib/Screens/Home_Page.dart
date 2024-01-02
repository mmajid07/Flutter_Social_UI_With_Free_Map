import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/Components/Post_item.dart';
import 'package:test_app/Components/ToolBar.dart';
import 'package:test_app/Config/App_Icon_&_Img.dart';
import 'package:test_app/Config/App_Route.dart';
import 'package:test_app/Style/App_Colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

List <String> users= [];

  @override
  Widget build(BuildContext context) {
    MockUsers();
    return Scaffold(
       appBar:ToolBar(title: "Just 5 minuts flutter",
       actions: [
        IconButton(onPressed: ( ){
          Navigator.of(context).pushNamed(AppRoute.nearby);
        }, 
        icon: SvgPicture.asset(AppIcons.ic_location, width: 50,height: 70,))
        
       ],
       ),
       
       
        body: ListView.separated(
          itemCount: users.length,
          itemBuilder: 
        (context , index){
           return PostItem(user:  users[index],);
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 20,
            
          );
        },
        )
        
    );
  }

   MockUsers(){
    for(var i=0; i<=100;i++){
      users.add("User Number $i");
    }
     
  }
}