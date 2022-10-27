import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:maria_brown_hearing_clinic/app_services/api_intercepter.dart';
import 'package:maria_brown_hearing_clinic/app_services/api_url.dart';

class ApiService{

  static Dio dio = Dio();


  ///---- post api ---///
  static  postResponseApi({required String endPoint, required dynamic data}) async{
    String path = '${AppUrl.baseUrl}/$endPoint';
    try {
      dio.interceptors.add(AppInterceptors());
      Response response = await dio.post(path,
          queryParameters: data);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Authentication Error');
      }
    }on DioError catch (e){

      if (e.type == DioErrorType.connectTimeout) {
         debugPrint("Please Check Internet Connection");

      }
      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint("Please Check Internet Connection");
      }
    }
  }

  ///--- get optional Data api ----///
  static  getWithDataResponseApi({required String endPoint, required dynamic data}) async{
    String path = '${AppUrl.baseUrl}/$endPoint';
    try {
      dio.interceptors.add(AppInterceptors());
      Response response = await dio.get(path,
          queryParameters: data);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Authentication Error');
      }
    }on DioError catch (e){

      if (e.type == DioErrorType.connectTimeout) {
        debugPrint("Please Check Internet Connection");

      }
      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint("Please Check Internet Connection");
      }
    }
  }


  ///--- get api----///
  static  getResponseApi({required String endPoint}) async{
    String path = '${AppUrl.baseUrl}/$endPoint';
    try {
      dio.interceptors.add(AppInterceptors());
      Response response = await dio.get(path);


      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Authentication Error');
      }
    }on DioError catch (e){

      if (e.type == DioErrorType.connectTimeout) {
        debugPrint("Please Check Internet Connection");

      }
      if (e.type == DioErrorType.receiveTimeout) {
        debugPrint("Please Check Internet Connection");
      }
    }
  }

}