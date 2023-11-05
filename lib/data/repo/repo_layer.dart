

import 'package:valorant/data/web_service/api_service.dart';

class RepoLayer{

  final ApiService apiService;
  RepoLayer({required this.apiService});

  Future<dynamic> getAgent() async{
    return apiService.getAgent();
  }



}