import 'package:shared_preferences/shared_preferences.dart';


class data{
  static SharedPreferences? _preferences;
  static Future init() async => _preferences = await SharedPreferences.getInstance();

  static Future setDataDouble(String key,double kayit) async {
    await _preferences?.setDouble(key, kayit);
  }

  static Future<double?> getDataDouble(String key) async{
    return await _preferences?.getDouble(key);
  }

}