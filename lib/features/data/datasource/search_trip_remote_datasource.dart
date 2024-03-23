import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:test_bus/core/error/exception.dart';
import 'package:test_bus/core/util/constants.dart';
import 'package:test_bus/features/data/model/search_trips_cities_model.dart';

abstract class SearchTripRemoteDataSource {
  Future<SearchTripsCitiesModel> searchTripsCities({
    required String departureCity,
    required String destinationCity,
    required String date,
  });
}

//

class SearchTripRemoteDataSourceImple implements SearchTripRemoteDataSource {
  final Dio dio;

  SearchTripRemoteDataSourceImple({required this.dio});

  @override
  Future<SearchTripsCitiesModel> searchTripsCities({
    required String departureCity,
    required String destinationCity,
    required String date,
  }) async {
    try {
      String link =
          '${Constants.baseUrl}/?${Constants.departureCity}$departureCity&${Constants.destinationCity}$destinationCity&${Constants.date}$date';
      debugPrint('Link: $link');
      final response = await dio.get(link);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return SearchTripsCitiesModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    } on FormatException {
      throw ServerException();
    }
  }
}
