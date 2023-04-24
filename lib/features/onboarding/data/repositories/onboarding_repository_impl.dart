import 'package:bestpro_branding_app/core/errors/failure.dart';
import 'package:bestpro_branding_app/features/onboarding/data/datasource/onboarding_datasource.dart';
import 'package:bestpro_branding_app/features/onboarding/domain/entities/onboarding.dart';
import 'package:bestpro_branding_app/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:dartz/dartz.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource localDataSource;

  OnboardingRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, Onboarding>> getOnboarding() async {
    try {
      final isComplete = await localDataSource.getIsComplete();
      final onboarding = Onboarding(
        isComplete: isComplete,
      );
      return Right(onboarding);
    } catch (e) {
      return Left(CacheGetFailure());
    }
  }

  @override
  Future<Either<Failure, void>> saveOnboarding(Onboarding onboarding) async {
    try {
      final isComplete = await localDataSource.saveIsComplete(onboarding.isComplete);
      return Right(isComplete);  
    } catch (e) {
      return Left(CacheGetFailure());
    }
  }
}
