import 'package:flutter/material.dart';
import 'package:tam_task/view/widgets/button.dart';

import 'similar_items.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> _colors = [
      Color(0x55FF9997),
      Color(0xFFFF9997),
    ];
    final _size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(  
                backgroundColor: Color(0xFFFF9997),
                leading: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                  size: 40,
                ),
                expandedHeight: _size.height * 0.4,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "Tam Task",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  background: Image.asset(
                    "assets/images/test.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Container(
              height: _size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    gradient: LinearGradient(
                      colors: _colors,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Seeta's Orchid",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: _size.height * 0.02),
                        Text(
                          "Fado Flower",
                          style: TextStyle(
                              color: Color(0xFF004EB4),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: _size.height * 0.02),
                        Text(
                          "Flowers have long been admired and used by humans",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: _size.height * 0.02),
                        Text(
                          "Similar Items",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: _size.height * 0.02),
                        SimilarItems(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ClickButton(
                      height: _size.height*0.08,
                      width: _size.width*0.8,
                      text: "Add to Card (100 KWD)",
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFF6C6A),
                            Color(0xFFFF9997),
                      ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
