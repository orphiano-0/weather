class FailedToFetchData implements Exception {
  final String message;

  FailedToFetchData([this.message = 'Failed to fetch data from API']);
}
