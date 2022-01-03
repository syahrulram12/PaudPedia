class ApiResponse<T> {
  int code = 0;
  String message = "";
  T? data;

  ApiResponse({this.code = 0, this.message = "", this.data});
}
