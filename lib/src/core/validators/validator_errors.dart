class UnexpectedError extends Error {
  @override
  String toString() {
    return Error.safeToString("Encountered an error at an unrecoverable point. Terminating.");
  }
}