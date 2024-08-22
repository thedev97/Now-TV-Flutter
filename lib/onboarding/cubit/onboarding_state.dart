part of 'onboarding_cubit.dart';

class OnboardingState extends Equatable {

  const OnboardingState({this.pageIndex = 0});
  final int pageIndex;

  OnboardingState copyWith({int? pageIndex}) {
    return OnboardingState(pageIndex: pageIndex ?? this.pageIndex);
  }

  @override
  List<Object?> get props => <Object?>[pageIndex];
}
