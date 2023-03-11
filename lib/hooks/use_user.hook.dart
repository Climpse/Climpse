import 'package:climpse/constants/base_url.dart';
import 'package:climpse/model/user.model.dart';
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

Future<User> getUserDetails({required int id}) async {
  final response = (await dio.get('${BaseUrl.baseUrl}/usuarios/$id')).data;
  return User(
    nome: response['nome'],
    cpf: response['cpf'],
    email: response['email'],
    senha: response['senha'],
    sexo: response['sexo'],
    celular: response['celular'],
  );
}
