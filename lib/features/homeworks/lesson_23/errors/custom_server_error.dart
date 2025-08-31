class CustomServerError implements Exception {
  CustomServerError(this.errorMessage);

  final String errorMessage;

  @override
  String toString() {
    return 'Custom Server Error: $errorMessage';
  }
}
