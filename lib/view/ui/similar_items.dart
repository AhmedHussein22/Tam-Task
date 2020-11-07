import 'package:flutter/material.dart';
import 'package:tam_task/view/widgets/items.dart';
class SimilarItems extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Container(
      height: size.height *0.3,
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: 3,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: size.height*0.01/10,
          ),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Items(
              imagePath:"assets/images/test.png",
              catName: "Narcissa",
              cost: 100,
            );
          }
      ),
    );
  }
}      

