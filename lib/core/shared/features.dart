import 'package:shared_preferences/shared_preferences.dart';

bool show =true;
abstract class Feature {
  Future<void> prefs() async {
    if (show == true) {
       final prefs = await SharedPreferences.getInstance();
       show = prefs.getBool("ON_BOARDING") ?? true;
    } else {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool("ON_BOARDING" , false);  
    }
   
  }
}



