import 'package:climpse/constants/base_url.dart';
import 'package:climpse/model/login.model.dart';
import 'package:climpse/widgets/show_custom_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final dio = Dio();

login({cpf}) async {
  try {
    final response = await dio.get('${BaseUrl.baseUrl}/usuarios/buscar/$cpf');
    print(response);
  } catch (e) {
    return 'error';
  }
}
