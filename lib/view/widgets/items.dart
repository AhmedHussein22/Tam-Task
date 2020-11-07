import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String imagePath;
  final String catName;
  final double cost;
  Items({this.imagePath,  this.cost, this.catName});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.35,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$catName",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                ),
                Text(
                  "KWD ${cost.toString()}",
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}