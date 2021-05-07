import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:"TabBar",
    home : DefaultTabController(
      length:3,
      child:Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: [
             // Tab(icon:Icon(Icons.home),text:"Home"),
              Tab(icon: Icon(Icons.directions_car),text:"Car"),
              Tab(icon: Icon(Icons.directions_transit),text:"Train"),
              Tab(icon: Icon(Icons.directions_bike),text: "bike",),
            ],
          ),
        ),
        body:TabBarView(
          children: [

            //HomePage(),
            Home1Page(),
            Home2Page(),
            Home3Page()
          ],
        ),
      ),
    ),


    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text("Hey sejal!"),
    );
  }
}
class Home1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
      child:Text("THIS IS TAB FOR CAR!",style: TextStyle(fontSize: 60,fontWeight: FontWeight.w300,color: Colors.black,),),
        color:Colors.pink,
      ),);
  }
}

class Home2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
      child:Text("THIS IS TAB FOR TRAIN!",style: TextStyle(fontSize: 60,fontWeight: FontWeight.w300,color: Colors.black, ),),
        color:Colors.green,
    ),);
  }
}
class Home3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
      child:Text("THIS IS TAB FOR BICYCLE!",style: TextStyle(fontSize: 60,fontWeight: FontWeight.w300,color: Colors.black ),),
        color:Colors.yellow,
    ),);
  }
}
