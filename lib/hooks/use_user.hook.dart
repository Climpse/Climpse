import 'package:climpse/constants/base_url.dart';
import 'package:dio/dio.dart';

final dio = Dio();

login({cpf}) async {
  try {
    final response =
        (await dio.get('${BaseUrl.baseUrl}/usuarios/buscar/$cpf')).data;
    return response['id'];
  } catch (e) {
    return 'error';
  }
}
