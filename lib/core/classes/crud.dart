import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/core/failure/failure.dart';
import 'package:news_app/core/functions/internet_checker.dart';

class Crud {
  Future<Either<Failure, Map<String, dynamic>>> getData(String url) async {
    if (await internetChecker()) {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> responsebody = jsonDecode(response.body);
        return Right(responsebody);
      } else {
        return const Left(Failure.serverFailure);
      }
    } else {
      return const Left(Failure.offline);
    }
  }
}
