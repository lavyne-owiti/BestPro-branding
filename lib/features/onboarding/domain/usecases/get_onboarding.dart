import 'package:bestpro_branding_app/core/errors/failure.dart';
import 'package:bestpro_branding_app/core/usecases/usecase.dart';
import 'package:bestpro_branding_app/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:bestpro_branding_app/features/onboarding/domain/entities/onboarding.dart';
import 'package:dartz/dartz.dart';

import '../repositories/onboarding_repository.dart';

class GetOnboarding extends NoParamsUseCase<Onboarding> {
  OnboardingRepository repository;
  GetOnboarding({
    required this.repository,
  });
  @override
  Future<Either<Failure, Onboarding>> call() {
    return repository.getOnboarding();
  }
}
