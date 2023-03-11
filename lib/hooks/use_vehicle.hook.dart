import 'package:climpse/constants/base_url.dart';
import 'package:climpse/model/Vehicle.model.dart';
import 'package:dio/dio.dart';

final dio = Dio();

Future<dynamic> getAllAvailableVehicles() async {
  List<Vehicle> _vehicles = [];

  Response response = await dio.get(getAvailableVehiclesUrl);

  return response.data;
}
