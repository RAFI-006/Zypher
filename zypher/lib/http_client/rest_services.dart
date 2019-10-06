
import 'package:zypher/constants/base_url.dart';
import 'package:zypher/http_client/httpclient.dart';
import 'package:zypher/model/base_model.dart';

class RestServices
{

   String _baseUrl= BaseUrl.baseUrl ;

   //Get function for getting all homepage details from api
  Future<BaseModel> getHomePageDetails()async
  {
     try {

       return HttpClient.get(_baseUrl);

     }

     on Error catch (e)

    {
      throw Exception('' + e.toString());
    }
  }


}
