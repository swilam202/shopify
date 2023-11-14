import 'package:hhhhhhhh/features/auth%20feature/domain/entites/auth%20data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataStorage {
  static late final SharedPreferences sharedPreferences;

  static Future<void> initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static void setData(AuthData data) async {
    await sharedPreferences.setInt('id', data.id);
    await sharedPreferences.setString('name', data.name);
    await sharedPreferences.setString('email', data.email);
    await sharedPreferences.setString('image', data.image);
    await sharedPreferences.setString('phone', data.phone);
    await sharedPreferences.setString('token', data.token);
  }

  static String? getData(String key) {
    String? data = sharedPreferences.getString(key);
    return data;
  }

  static Future<void> deleteData(String key) async {
    await sharedPreferences.remove(key);
  }
}
