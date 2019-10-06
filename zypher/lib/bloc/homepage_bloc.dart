import 'package:rxdart/rxdart.dart';
import 'package:zypher/model/base_model.dart';
import 'package:zypher/repository/homepage_repository.dart';

class HomePageBloc
 {

   final _repository = HomePageRepository();


   final _getHomePageData = PublishSubject<BaseModel>();

   //public observable to save data from th streams
   Observable<BaseModel> get getHomePageData => _getHomePageData.stream;

   //Get Function to retrieve data from rest service
   void fetchHomePageData()async
   {
     final response = await _repository.getHomePageDetails();


     _getHomePageData.sink.add(response);





   }

   //disposing the state after completed
   void dispose() {
     _getHomePageData.close();
   }


 }
