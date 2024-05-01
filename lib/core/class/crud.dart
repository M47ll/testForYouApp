import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:work_test/core/class/status_request.dart';
import 'package:work_test/core/functions/check_internet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    if (await checkInternet()) {
      var response = await http.post(
        Uri.parse(linkUrl),
        body: data,
      );
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        print(responseBody);
        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } else {
      return const Left(StatusRequest.offlineFailure);
    }
  }

  Future<Either<StatusRequest, Map>> putData(String linkUrl, Map data) async {
    if (await checkInternet()) {
      var response = await http.put(
        Uri.parse(linkUrl),
        body: data,
      );
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        print(responseBody);
        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } else {
      return const Left(StatusRequest.offlineFailure);
    }
  }

  Future<Either<StatusRequest, Map>> getData(String linkUrl, Map data) async {
    if (await checkInternet()) {
      var response = await http.get(
        Uri.parse(linkUrl),
      );
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        print(responseBody);

        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } else {
      return const Left(StatusRequest.offlineFailure);
    }
  }
}
