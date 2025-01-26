import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  const CustomButton({
    super.key,
    required this.name,
    this.color=Colors.black,
    this.icon,
    required this.function,
    this.textStyle});
  final String name;
  final Color color;
  final Icon ?icon;
  final VoidCallback function;
  final TextStyle ?textStyle;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){function();},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: 20,
        shadowColor: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(20),
            bottomRight: Radius.circular(20)
          ),
        )
      ),
      child: icon!=null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          Text(name),
        ],
      ):Text(name)
    );
  }
}