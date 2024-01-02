 

import 'package:flutter/material.dart';
import 'package:test_app/Style/App_Text.dart';

import '../Style/App_Colors.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const ToolBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.black,
        
        title: Text(title, style: AppText.header1,),
        centerTitle: false,
        actions:actions,
        );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(64);
}