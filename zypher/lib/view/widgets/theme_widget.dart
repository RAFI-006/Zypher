import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zypher/model/themes.dart';
import 'package:zypher/shared/content_title_size.dart';
class ThemeWidget extends StatelessWidget
{
  BuildContext _context;
  List<Themes> _themeList;

  ThemeWidget(BuildContext context, List<Themes> themeList)
  {
    _context=context;
    _themeList=themeList;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height/3.5,
        width:MediaQuery.of(context).size.width,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

      Padding(
        padding: const EdgeInsets.only(left:10.0),
        child: Text("Themes",style:ContentTilteSize.size),
      ),

   Expanded(child: _themeWidgetList(),)



      ],





      )
      ),
    );

  }

  //Theme Widget List
  Widget _themeWidgetList()
  {
    return Container(

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _themeList.length,
        itemBuilder: (BuildContext context, int index) {

          return _themeWidgetView(_themeList[index].themeImageUrl,_themeList[index].themeName);
        },

      ),
    );
  }

  //Theme View
  Widget _themeWidgetView(String imageUrl,String themeText)
  {
    return Padding(
      padding: EdgeInsets.all(10),

      child:Container(
        width: MediaQuery.of(_context).size.width*0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover,

              image: CachedNetworkImageProvider(imageUrl),

          ),


        ),
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Align(
      alignment: Alignment.bottomLeft,
      child: Text(themeText,style: TextStyle(color:Colors.white,fontSize:18 ,fontWeight:FontWeight.w900),)),
),
      )


    );
  }




}
