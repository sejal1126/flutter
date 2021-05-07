import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title:"Icons Widget",
    home : Scaffold(
appBar: AppBar(
title: Text("Card Widget"),
backgroundColor: Colors.black,

),
      drawer:Drawer(
        child:ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            UserAccountsDrawerHeader(accountName: Text("Sejal Rathore"), accountEmail: Text("rathoresejal1126@gmail.com"),
            currentAccountPicture: Container(
            height:60,
              width:60,
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(image: AssetImage("assets/sejal.jpg"),fit:BoxFit.cover),
              ),
              
            ),),
          ListTile(
            leading: Icon(Icons.home),
            title:Text("Home"),
            onTap:(){},
          ),
            ListTile(
              leading: Icon(Icons.settings),
              title:Text("setting"),
              onTap:(){},
            ),
            ListTile(
              leading: Icon(Icons.local_grocery_store),
              title:Text("Store"),
              onTap:(){},
            ),

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
