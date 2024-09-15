import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

const bool _isActions =  bool.fromEnvironment('isActions', defaultValue: false);

const String _apiBaseUrlActions = String.fromEnvironment('API_BASE', defaultValue: ""); 
const String _socketsBaseUrlActions = String.fromEnvironment('API_SOCKETS', defaultValue: "");

class Enviroment {

  static final String apiBaseUrl = _isActions ? _apiBaseUrlActions 
    : Platform.isAndroid ? dotenv.get('ANDROID_LOCAL_API_BASE') : dotenv.get('IOS_LOCAL_API_BASE');
  
  static final String socketsBaseUrl = _isActions ? _socketsBaseUrlActions 
    : Platform.isAndroid ? dotenv.get('ANDROID_LOCAL_API_SOCKETS') : dotenv.get('IOS_LOCAL_API_SOCKETS');
}