const ipLocalHost = "192.168.0.107";

class BaseUrl {
  static const baseUrl = "http://${ipLocalHost}:8080";
}

const String CREATE_USER_URL = '${BaseUrl.baseUrl}/usuarios/criar';
