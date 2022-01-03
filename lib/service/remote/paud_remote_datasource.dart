import 'package:dio/dio.dart';
import 'package:paudpedia_kemendikbud/service/API_CONFIG.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class PaudRemoteDatasource {
  final option = BaseOptions(
      baseUrl: BASE_URL, connectTimeout: 50000, receiveTimeout: 50000);

  final interceptor = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      compact: true);

  Dio? dio;

  PaudRemoteDatasource(InterceptorsWrapper networkIntercep) {
    if (dio == null) {
      dio = Dio(option)
        ..interceptors.add(interceptor)
        ..interceptors.add(networkIntercep);
    }
  }

  void setHeaderContentType(String contentType, String token) {
    dio?.options.headers['Authorization'] = "Bearer " + token;
    dio?.options.headers['content-Type'] = contentType;
    dio?.options.headers['accept'] = contentType;
  }

  // Forum
  Future<Response>? loginForum(FormData request) {
    return dio?.post(LOGIN_FORUM_ENDPOINT, data: request);
  }

  Future<Response>? registerForum(FormData request) {
    return dio?.post(REGISTER_FORUM_ENDPOINT, data: request);
  }

  Future<Response>? changePassword(FormData request) {
    return dio?.post(CHANGE_PASSWORD_ENDPOINT, data: request);
  }

  Future<Response>? forgetPassword(FormData formData, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.post(FORGET_PASSWORD_ENDPOINT, data: formData);
  }

  Future<Response>? getProfile(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(USER_PROFILE_ENDPOINT);
  }

  Future<Response>? updateProfile(FormData request, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.post(UPDATE_PROFILE_ENDPOINT, data: request);
  }

  Future<Response>? getListSubject(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(SUBJECT_LIST_ENDPOINT);
  }

  Future<Response>? getListForumTogether(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(FORUM_TOGETHER_LIST_ENDPOINT);
  }

  Future<Response>? getForumDetail(String id, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(FORUM_DETAIL_ENDPOINT, queryParameters: {"id": id});
  }

  Future<Response>? getListTopic(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(TOPIC_LIST_ENDPOINT);
  }

  Future<Response>? getTopicDetail(String id, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(TOPIC_DETAIL_ENDPOINT, queryParameters: {"id": id});
  }

  Future<Response>? getEventList(String month, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(EVENT_LIST_ENDPOINT, queryParameters: {"month": month});
  }

  Future<Response>? getEventDetail(String id, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(EVENT_DETAIL_ENDPOINT, queryParameters: {"id": id});
  }

  Future<Response>? postFormParticipant(FormData formData, String token) {
    setHeaderContentType(MULTIPART_CONTENT_TYPE, token);
    return dio?.post(POST_FORM_PARTICIPANT_ENDPOINT, data: formData);
  }

  Future<Response>? postFormComment(FormData formData, String token) {
    setHeaderContentType(MULTIPART_CONTENT_TYPE, token);
    return dio?.post(POST_FORM_COMMENT_ENDPOINT, data: formData);
  }

  Future<Response>? postFormReport(FormData formData, String token) {
    setHeaderContentType(MULTIPART_CONTENT_TYPE, token);
    return dio?.post(POST_FORM_REPORT_ENDPOINT, data: formData);
  }

  Future<Response>? postResponseTopic(FormData formData, String token) {
    setHeaderContentType(MULTIPART_CONTENT_TYPE, token);
    return dio?.post(POST_RESPONSE_TOPIC_ENDPOINT, data: formData);
  }

  // Community
  Future<Response>? getListCreativeTeacher(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(CREATIVE_TEACHER_ENDPOINT);
  }

  Future<Response>? getListParentSharing(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(PARENT_SHARING_ENDPOINT);
  }

  Future<Response>? getCommunityDetail(String id, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(COMMUNITY_DETAIL_ENDPOINT, queryParameters: {"id": id});
  }

  // Gallery
  Future<Response>? getSingList(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(SING_LIST_ENDPOINT);
  }

  Future<Response>? getSingDetail(String id, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(SING_DETAIL_ENDPOINT, queryParameters: {"id": id});
  }

  Future<Response>? getReadingList(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(READING_LIST_ENDPOINT);
  }

  Future<Response>? getPlayingList(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(PLAYING_LIST_ENDPOINT);
  }

  Future<Response>? getPlayingDetail(String id, String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(PLAYING_DETAIL_ENDPOINT, queryParameters: {"id": id});
  }

  Future<Response>? getTellingList(String token) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    return dio?.get(TELLING_LIST_ENDPOINT);
  }

  Future? downloadFile(
      String url, String path, String token, Function(int, int) onProgress) {
    setHeaderContentType(JSON_CONTENT_TYPE, token);
    dio?.options.receiveTimeout = 60 * 1000;
    return dio?.download(url, path, onReceiveProgress: onProgress);
  }

  static const JSON_CONTENT_TYPE = 'application/json';
  static const MULTIPART_CONTENT_TYPE = 'multipart/form-data';
}
