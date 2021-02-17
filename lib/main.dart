import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Grid View"),

          ),
            body : GridView.count(
                padding : EdgeInsets.all(4.0),
                crossAxisCount : 3, childAspectRatio : 1.0,
                children: List.generate(15, (index){
                  return new Card(
                    elevation: 10.0,
                    child: new Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                      image: DecorationImage(

                      image: NetworkImage('https://pbs.twimg.com/profile_images/1347563114301153294/7yX1tx7P.jpg'),
                  fit: BoxFit.fill,
                  ),
                      ),
                    ),);

                }),

            )
        ));
  }
}

