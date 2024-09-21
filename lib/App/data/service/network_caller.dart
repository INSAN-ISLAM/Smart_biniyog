import 'dart:convert';
import 'dart:developer';


import 'package:http/http.dart' as http;
import 'package:smart_biniyog/App/data/service/data_saver.dart';

class NetworkUtils {
  /// Get request
  Future<dynamic> getMethod(String url) async {
    String token="53|pRq1MiXNh0Ja8pHjWhYfj37CJ4b7MZSXr08NWTwCead8a176";
    try {
      final http.Response response = await http.get(Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',
        },

      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      }
      //else if (response.statusCode == 401) {
      // if (onUnAuthorize != null) {
      //   onUnAuthorize();
      // } else {
      //   //moveToLogin();
      // }
      //}
      else {
        log("Something went wrong");
      }
    } catch (e) {
      log('Error $e');
    }
  }

  /// Post request
  Future<http.Response> profilepostMethod({Map<String, String>? body1}) async {



    String url="https://agro.smartbiniyog.com/api/client-v1/update-profile";
    String token="49|l1Wi5Z2ah7KZS1mCsyI9tuZbslHGDtVAoSUXEmG4c99f4b04";
    Map<String,String> headers= {
      "Content-Type": "application/json",
      'Authorization': 'Bearer $token',
    };

    // Map<String,dynamic> body1={
    //   "name": "insan islam",
    //   "email": "abc@gmail.com",
    //   "phone": "+1234567890",
    //   "address": "123 Elm Street, Springfield",
    //   "nid": "123456789",
    //   "tin": "987654321",
    //   "image": "path/to/image.jpg",
    //   "nid_f": "path/to/nid_front.jpg",
    //   "nid_b": "path/to/nid_back.jpg",
    //   "gender":"male",
    //   "client_type":1
    //
    // };

    http.Response response=await http.post(Uri.parse(url),headers: headers,body: json.encode(body1));
    return response;


  }








  Future<dynamic> authPostMethod(String url, {Map<String, String>? body}) async {
    String token="53|pRq1MiXNh0Ja8pHjWhYfj37CJ4b7MZSXr08NWTwCead8a176";
    try {
      final http.Response response = await http.post(Uri.parse(url),

          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode(body));
     // log(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } //else if (response.statusCode == 401) {
      //   if (onUnAuthorize != null) {
      //     onUnAuthorize();
      //   } else {
      //     moveToLogin();
      //   }
      else {
        log("Something went wrong ${response.statusCode}");
      }
    } catch (e) {
      log('Error $e');
    }
  }

  Future<dynamic> PostMethod(String url, {Map<String, String>? body}) async {
    String token="53|pRq1MiXNh0Ja8pHjWhYfj37CJ4b7MZSXr08NWTwCead8a176";
    try {
      final http.Response response = await http.post(Uri.parse(url),

          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer $token',
          },
          body: jsonEncode(body));
      log(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } //else if (response.statusCode == 401) {
      //   if (onUnAuthorize != null) {
      //     onUnAuthorize();
      //   } else {
      //     moveToLogin();
      //   }
      else {
        log("Something went wrong ${response.statusCode}");
      }
    } catch (e) {
      log('Error $e');
    }
  }




}