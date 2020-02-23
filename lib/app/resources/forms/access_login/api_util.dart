class ApiUtil {
  static dataClear(dynamic values) {
    Map<String, dynamic> result = {};
    values.forEach((String key, dynamic data) {
      if (data != null && data != '') {
        result[key] = data;
      }
    });
    return result;
  }
}
