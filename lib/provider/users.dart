import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:climpse/globals/global_variables.dart' as globals;

final dio = Dio();

const _baseUrl = "https://climpse-api-dev-default-rtdb.firebaseio.com/";

Future<void> registerUser(
    {nome, cpf, email, senha, sexo, celular, context}) async {
  final response = await dio.post(
    "$_baseUrl/users.json",
    data: json.encode(
      {
        "name": nome,
        "cpf": cpf,
        "email": email,
        "senha": senha,
        "sexo": sexo,
        "celular": celular,
      },
    ),
  );

  final id = response.data['name'];
  globals.userId = id;

  Navigator.pushNamed(context, "/home");
}
