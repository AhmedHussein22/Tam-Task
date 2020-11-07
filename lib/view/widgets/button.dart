
import 'package:flutter/material.dart';


class ClickButton extends StatelessWidget {
 final String text ;
 final Function onPressed ;
 final double width ;
 final double height ;
 final BoxDecoration decoration;
 final Color textColor ;
 

  ClickButton({this.text, this.onPressed, this.width, this.height ,this.decoration ,this.textColor,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width ?? 200,
        height: height ?? 42,
        decoration: decoration ?? BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text??"" , style: TextStyle(color: textColor??Colors.black , fontSize: 16 , fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
