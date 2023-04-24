

abstract class OnboardingLocalDataSource {
  Future<bool> getIsComplete();
  Future<void> saveIsComplete(bool isComplete);
}

