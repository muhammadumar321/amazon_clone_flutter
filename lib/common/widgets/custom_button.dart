import 'package:amazon_clone/constant/gloable_variables.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(title,style: TextStyle(
        color: Colors.white
      ),),
      style: ElevatedButton.styleFrom(
        backgroundColor: GlobalVariables.secondaryColor,
          minimumSize: const Size(double.infinity, 50),),
    );
  }
}
