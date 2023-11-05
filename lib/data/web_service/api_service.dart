
import 'package:http/http.dart' as http;
import 'package:valorant/constant/Constant.dart';

class ApiService{

  Future <dynamic> getAgent() async{

    final response = await http.get(Uri.parse(apiUrl));
    return response;

  }

}