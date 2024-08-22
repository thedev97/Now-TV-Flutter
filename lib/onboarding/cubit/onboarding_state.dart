part of 'onboarding_cubit.dart';

class OnboardingState extends Equatable {
  final int pageIndex;

  const OnboardingState({this.pageIndex = 0});

  OnboardingState copyWith({int? pageIndex}) {
    return OnboardingState(pageIndex: pageIndex ?? this.pageIndex);
  }

  @override
  List<Object?> get props => [pageIndex];
}
