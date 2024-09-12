import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

const bool _isActions =  bool.fromEnvironment('isActions', defaultValue: false);

class Enviroment {

  static const String apiBaseUrlActions = String.fromEnvironment('API_BASE', defaultValue: ""); 
  static const String socketsBaseUrlActions = String.fromEnvironment('API_SOCKETS', defaultValue: "");

  static String  apiBaseUrl = _isActions ? apiBaseUrlActions 
    : Platform.isAndroid ? dotenv.get('ANDROID_LOCAL_API_BASE') : dotenv.get('IOS_LOCAL_API_BASE');
  
  static String  socketsBaseUrl = _isActions ? socketsBaseUrlActions 
    : Platform.isAndroid ? dotenv.get('ANDROID_LOCAL_API_SOCKETS') : dotenv.get('IOS_LOCAL_API_SOCKETS');
}