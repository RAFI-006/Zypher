import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowInternetError extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       body: Center(

         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[

             Icon(Icons.terrain,size: 100,),
             SizedBox(height: 20,),
             Text("Please Enable Internet Connection"),

             Text("And Restart the App"),

           ],

         ),


       ),



    );
  }

}