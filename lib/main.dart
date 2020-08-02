import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//use this code and do more modification or use https://www.youtube.com/watch?v=I26rzdjqVXA this tutorial code according to requirements or see material appbar code.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.email),
              tooltip: "email",
            ),
            title: Text("Welcome Here"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.close),
                tooltip: "close",
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
                tooltip: "add",
              ),
            ],
            expandedHeight: 210.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                background: Column(
              children: [
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image.network(
                        "https://wallpapercave.com/wp/wp3205206.jpg",
                        fit: BoxFit.cover,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                                child: Text(
                              "Hello World",
                              textScaleFactor: 1.5,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.home),
                              tooltip: "home",
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
          SliverList(
            //also you can use sliverFillRemaining
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                //use SliverChildListDelegate or SliverChildBuilderDelegate if you get data from model
                return ListTile(
                  title: Text("welcome $index"),
                );
              },
              childCount: 15,
            ),
          )
        ],
      ),
    );
  }
}
