const ipLocalHost = "localhost";

class BaseUrl {
  static const baseUrl = "http://${ipLocalHost}:8080";
}

const String CREATE_USER_URL = '${BaseUrl.baseUrl}/usuarios/criar';

const String DELETE_USER_URL = '${BaseUrl.baseUrl}/usuarios/deletar';
