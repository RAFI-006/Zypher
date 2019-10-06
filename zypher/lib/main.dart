import 'package:flutter/material.dart';
import 'package:zypher/shared/show_internet_error.dart';
import 'package:zypher/view/home_page.dart';
import 'package:connectivity/connectivity.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of our application.


  @override
  Widget build(BuildContext context) {

     bool _isInternet=false;
     _checkInternetConnection().then((onValue){

         _isInternet=onValue;
     });


   return MaterialApp(

     title: 'Zypher',
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),

     home: !_isInternet?HomePage() :ShowInternetError(),
   );


  }

  Future<bool> _checkInternetConnection()async
  {
      bool isInternet=true;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
          return isInternet;
    } else if (connectivityResult == ConnectivityResult.wifi) {
         return isInternet;
    }

    return !isInternet;
  }

}


