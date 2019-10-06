import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget
{

  BuildContext _context;

  CustomAppBar(BuildContext context)
  {
    _context=context;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return SafeArea(
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black,width:2 ))

        ),
        child: Center(
            child: _appBar()) ,

      ),
    );

  }

  //Title of the app display in the app BAr
   Widget _title()
   {
     return Center(child: Text("#Zypher",style: TextStyle(fontStyle: FontStyle.normal,fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),));
   }

   //App Bar Icon Buttons
   Widget _appBarIcons()
   {
     return Padding(
       padding: const EdgeInsets.all(5.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,

         children: <Widget>[

           IconButton(icon: Icon(Icons.search,size: 24,color: Colors.black54,),
             onPressed: (){},

           ),

           IconButton(icon: Icon(Icons.notifications,size: 24,color: Colors.black54,),
             onPressed: (){},

           ),
           IconButton(icon: Icon(Icons.assignment,size: 24,color: Colors.black54,),
             onPressed: (){},

           ),
           IconButton(icon: Icon(Icons.shopping_basket,size: 24,color: Colors.black54,),
             onPressed: (){},

           ),

    CircleAvatar(

       backgroundImage: NetworkImage(

    "https://i.ibb.co/hL446L9/profile-Image.jpg")),



         ],

       ),
     );
   }

   //Accessing Drawer from Custom App Bar
   Widget _drawer()
   {

     return Row(
       children: <Widget>[
         IconButton(icon: Icon(Icons.menu,size: 24,color: Colors.grey,),
           onPressed: (){
             Scaffold.of(_context).openDrawer();

           },
         ),

        _title(),
       ],
     );

   }

//Main App Bar Widget
   Widget _appBar()
  {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

        _drawer(),

        _appBarIcons(),





      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MediaQuery.of(_context).size.height*0.1);

}
