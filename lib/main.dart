import 'package:bangabandhu_college/carousal_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.amber,
          ),
          appBar: AppBar(
            title: Text('Bangabandhu College'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Cat",
                ),
                Tab(
                  text: "Cat",
                ),
                Tab(
                  text: "Cat",
                ),
                Tab(
                  text: "Cat",
                ),
                Tab(
                  text: "Cat",
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: PrefetchImageDemo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
