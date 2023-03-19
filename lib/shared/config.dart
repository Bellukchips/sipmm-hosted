class Config {
  static String server = 'https://bellukstudio.space/sample-siakadponpes';
  static String endPoint = '$server/api/v1/';
  static String storage = '$server/storage/';
  static String profile = 'https://drive.google.com/uc?export=view&id=';
  static String token = 'token';
  static String user = 'user';

  static String get(String id) {
    return '$profile/$id';
  }
}
