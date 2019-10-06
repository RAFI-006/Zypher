import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zypher/bloc/homepage_bloc.dart';
import 'package:zypher/model/base_model.dart';
import 'package:zypher/shared/custom_appbar.dart';
import 'package:zypher/view/widgets/author_widget.dart';
import 'package:zypher/view/widgets/category_widget.dart';
import 'package:zypher/view/widgets/theme_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>
{

  HomePageBloc _bloc ;
  @override
  void initState() {
    // TODO: implement initState

      _bloc= HomePageBloc();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

 _bloc.fetchHomePageData();
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: CustomAppBar(context),
      body: StreamBuilder(

         stream: _bloc.getHomePageData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {

           if(snapshot.hasData)

             return SingleChildScrollView(child:_homePageView(snapshot));
             else
              return  Center(child:CircularProgressIndicator());

        },


      )

    );
  }

  Widget _homePageView(AsyncSnapshot snapshot)
  {

    BaseModel model = snapshot.data;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
         SizedBox(height: 20,),
         AuthorWidget(model.authors),
         SizedBox(height: 10,),
         ThemeWidget(context,model.themes),
         SizedBox(height: 10,),
         CategoryWidget(context, model.category),



      ],


    );
  }

}

