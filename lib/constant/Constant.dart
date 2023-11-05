
// class Constant {
//   Constant._();
// }

import 'package:valorant/data/web_service/api_service.dart';

const String base_url = "https://valorant-api.com";
const String method = "/v1/agents";
const String apiUrl = base_url+method;

final ApiService apiProvider = ApiService();