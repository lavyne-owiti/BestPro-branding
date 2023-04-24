import 'package:bestpro_branding_app/core/errors/exceptions.dart';
import 'package:bestpro_branding_app/features/onboarding/data/datasource/onboarding_datasource.dart';
import 'package:hive/hive.dart';

class OnboardingLocalDataSourceImp implements OnboardingLocalDataSource {
  static const String boxName = 'onboarding_box';
  static const String isCompleteKey = 'is_complete';

  @override
  Future<bool> getIsComplete() async {
    try {
      final box = await Hive.openBox(boxName);
      return box.get(isCompleteKey, defaultValue: false);
    } catch (e) {
      throw CacheGetException();
    }
  }

  @override
  Future<void> saveIsComplete(bool isComplete) async {
    try {
      final box = await Hive.openBox(boxName);
      await box.put(isCompleteKey, isComplete);
    } catch (e) {
      throw CacheGetException();
    }
  }
}
