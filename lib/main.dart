import 'package:flutter/material.dart';
import 'package:elastic_drawer/elastic_drawer.dart';

void main() => runApp(MyDrawer());

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ElasticDemo(),
    );
  }
}

class ElasticDemo extends StatefulWidget {
  @override
  _ElasticDemoState createState() => _ElasticDemoState();
}

class _ElasticDemoState extends State<ElasticDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ElasticDrawer(
      mainColor: Colors.lightBlue,
        drawerColor: Colors.blueGrey,
        mainChild: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('Main Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),),
          ),
        ),
        drawerChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.count(crossAxisCount: 3,
            mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              shrinkWrap: true,
              children: List.generate(6, (index){
                return Padding(padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.yellow,
                  child: Center(child: Text(index.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                );
              },),

            )
          ],
        )));
  }
}








