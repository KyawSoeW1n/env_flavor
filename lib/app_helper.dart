import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppHelper{
  static String get baseUrl => dotenv.get('baseURL') ?? '';
}