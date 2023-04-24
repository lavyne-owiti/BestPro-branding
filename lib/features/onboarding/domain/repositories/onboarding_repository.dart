import 'package:bestpro_branding_app/features/onboarding/domain/entities/onboarding.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class OnboardingRepository {
  Future<Either<Failure, Onboarding>> getOnboarding();
  Future<Either<Failure , void>> saveOnboarding(Onboarding onboarding);
}