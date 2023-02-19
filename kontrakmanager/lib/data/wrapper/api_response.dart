class ApiResponse<T> {
  T? data;
  Exception? exception;

  ApiResponse({
    this.data,
    this.exception,
  });
}
