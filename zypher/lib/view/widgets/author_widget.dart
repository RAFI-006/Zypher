import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:zypher/model/author.dart';
import 'package:zypher/shared/content_title_size.dart';
class AuthorWidget extends StatelessWidget
{

  List<Author> authors;

  AuthorWidget(List<Author> authors)
  {
    this.authors=authors;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(

          color: Colors.white,

   ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.25,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Text("Authors",style: ContentTilteSize.size),
                 SizedBox(height: 8,),

               Expanded(child: _authorsList(context)),

            ],

          ),
        ),


      ),
    );
  }

  //Single Container to add in the list view
  Widget _authorAvatars(String imageUrl, String authorName)
  {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Container(
        width:85,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            CachedNetworkImage(


              imageBuilder: (context,imageProvider) => Container(
                height: 60,
                width:  60,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
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

          SizedBox(height: 7,),

          Padding(
         padding: EdgeInsets.all(0),
            child: Text(authorName,style: TextStyle(color: Colors.grey),     overflow: TextOverflow.ellipsis,
              maxLines: 3 ,
              textDirection: TextDirection.ltr,
              softWrap: false,
              textAlign: TextAlign.center,
            ),
          )

          ],

        ),
      ),
    );
  }

//Author list fetching From Api
 Widget _authorsList(BuildContext context)
 {
   return Container(
     child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: authors.length,
       itemBuilder: (BuildContext context, int index) {


          return _authorAvatars(authors[index].authorImageUrl,authors[index].authorName);

       },


     ),
   );
 }

}