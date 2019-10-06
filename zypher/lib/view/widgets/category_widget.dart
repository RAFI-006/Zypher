
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zypher/model/category.dart';
import 'package:zypher/shared/content_title_size.dart';

class CategoryWidget extends StatelessWidget
{

  BuildContext _context;
   List<Category> _categoryList;
  CategoryWidget(BuildContext context,List<Category> categoryList )
  {
    _context=context;
    _categoryList=categoryList;

  }


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
       color: Colors.white30,
        width: MediaQuery.of(context).size.height,
        height: MediaQuery.of(context).size.width,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[

            Text("Explore By Category",style: ContentTilteSize.size,)

              ,SizedBox(height: MediaQuery.of(_context).size.height*0.1),
              Expanded(child:_gridView() ,)



          ],


        ),

      ),
    );
  }

//Parsing Data in grid view as per the UI needs
 Widget _gridView()
 {
  return GridView.builder(
  itemCount: _categoryList.length,

  gridDelegate:
  new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  itemBuilder: (BuildContext context,int index)
  {
  return   _dataContainer(_categoryList[index].categoryImageUrl,_categoryList[index].categoryName);
  },

  );

 }


 //Widget to contain data fetching from Api
  Widget _dataContainer(String imageUrl, String title)
  {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: MediaQuery.of(_context).size.width*0.8,
          height: MediaQuery.of(_context).size.width*0.8,

          decoration: BoxDecoration(

          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey,
              offset: Offset(0.5, 0.5))],

        ),

   child:Center(
       child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            Text(title, style: ContentTilteSize.size,),

            SizedBox(height:15 ,),

            CachedNetworkImage(


              imageBuilder: (context,imageProvider) => Container(
                height: 45,
                width:  45,

                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:imageProvider,
                      fit: BoxFit.cover


                  ),
                ),
              ),
              imageUrl: imageUrl,
              placeholder: (context, url) => new Icon(Icons.image),
              errorWidget: (context, url, error) => new Icon(Icons.broken_image),
            ),




          ],

       ),
   )




   ),
    ) ;






  }


}