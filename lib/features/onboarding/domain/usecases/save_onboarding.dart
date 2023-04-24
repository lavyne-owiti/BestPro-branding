import 'package:bestpro_branding_app/core/errors/failure.dart';
import 'package:bestpro_branding_app/core/usecases/usecase.dart';
import 'package:bestpro_branding_app/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:bestpro_branding_app/features/onboarding/domain/entities/onboarding.dart';
import 'package:dartz/dartz.dart';

import '../repositories/onboarding_repository.dart';

class SaveOnboarding extends UseCase<void, SaveOnboardingParams> {
  OnboardingRepository repository;
  SaveOnboarding({
    required this.repository,
  });
  @override
  Future<Either<Failure, void>> call(SaveOnboardingParams params) {
    return repository.saveOnboarding(Onboarding(
      isComplete: params.isComplete,
    ));
  }
}

class SaveOnboardingParams {
  final bool isComplete;
  SaveOnboardingParams({
    required this.isComplete,
  });
}
