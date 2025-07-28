class ApiReturn<T> {
  final T? data;
  final int statusCode;
  final String message;
  final String status;

  ApiReturn(
      {this.data,
      required this.statusCode,
      this.message = "",
      required this.status});

  static ApiReturn<T> networkError<T>(String? message) {
    return ApiReturn(statusCode: 500, status: 'ERROR', message: message ?? "");
  }

  static ApiReturn<T> error<T>(String? message, int? statusCode) {
    return ApiReturn(
        statusCode: statusCode ?? 700, status: 'ERROR', message: message ?? "");
  }

  static ApiReturn<T> fail<T>(String? message) {
    return ApiReturn(statusCode: 400, status: 'FAIL', message: message ?? "");
  }

  static ApiReturn<T> notFound<T>(String? message, int? statusCode) {
    return ApiReturn(
      statusCode: statusCode ?? 404,
      status: 'FAIL',
      message: message ?? '',
    );
  }

  static ApiReturn<T> success<T>(T? data, int statusCode) {
    return ApiReturn(statusCode: statusCode, status: 'SUCCESS', data: data);
  }
  
}