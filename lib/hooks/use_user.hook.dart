import 'package:climpse/constants/base_url.dart';
import 'package:climpse/model/user.model.dart';
import 'package:climpse/widgets/show_custom_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:climpse/globals/global_variables.dart' as globals;

final dio = Dio();

login({context, cpf}) async {
  try {
    final response =
        (await dio.get('${BaseUrl.baseUrl}/usuarios/buscar/$cpf')).data;

    globals.userId = response['id'];
    Navigator.pushNamed(context, "/home");
  } on DioError catch (error) {
    showCustomDialog(context, 'Ocorreu um erro', 'Você não está cadastrado');
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
