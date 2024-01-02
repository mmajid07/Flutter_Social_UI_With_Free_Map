import 'package:flutter/material.dart';
import 'package:test_app/Style/App_Colors.dart';
import 'package:test_app/Style/App_Text.dart';


class TextFieldComponent extends StatelessWidget {
  final String hint;
  const TextFieldComponent({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
                    decoration: InputDecoration(
                      hintText: hint,
                      label: Text(hint, style: TextStyle(color: AppColors.white,fontSize: 16),),
                      border: UnderlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(20),
                      ),
                      
                      filled: true,
                      fillColor:AppColors.disableFont.withOpacity(0.5),
                    ));
  }
}