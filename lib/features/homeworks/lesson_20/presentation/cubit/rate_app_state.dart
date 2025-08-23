class RateAppState {
  const RateAppState({
    this.rate = 0,
    this.isSubmissionSuccessful = false,
  });

  final int rate;
  final bool isSubmissionSuccessful;

  RateAppState copyWith({int? rate, bool? isSubmissionSuccessful}) {
    return RateAppState(
      rate: rate ?? this.rate,
      isSubmissionSuccessful:
          isSubmissionSuccessful ?? this.isSubmissionSuccessful,
    );
  }
}
