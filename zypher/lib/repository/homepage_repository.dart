
import 'package:zypher/http_client/rest_services.dart';
import 'package:zypher/model/base_model.dart';

class HomePageRepository
{

  var restService =RestServices();

   //Repository to fetch homePage details
   Future<BaseModel> getHomePageDetails()
   {
     try {

       return restService.getHomePageDetails();

     }

     on Error catch (e)

     {
       throw Exception('' + e.toString());
     }



   }






}
