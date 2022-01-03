import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:paudpedia_kemendikbud/models/api_response.dart';
import 'package:paudpedia_kemendikbud/models/community/detail/paud_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/community/parent_sharing/parent_sharing_response.dart';
import 'package:paudpedia_kemendikbud/models/gallery/playing/playing_list_response.dart';
import 'package:paudpedia_kemendikbud/models/gallery/reading/reading_list_response.dart';
import 'package:paudpedia_kemendikbud/models/gallery/sing/sing_list_response.dart';
import 'package:paudpedia_kemendikbud/models/gallery/telling/telling_list_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/Event/event_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/Event/event_list_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/creativeteacher/creative_teacher_data.dart';
import 'package:paudpedia_kemendikbud/models/together_room/forumlist/forum_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/forumlist/forum_together_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/login/forum_login_user_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/subjectlist/forum_subject_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/topiclist/forum_topic_detail_response.dart';
import 'package:paudpedia_kemendikbud/models/together_room/topiclist/forum_topic_response.dart';
import 'package:paudpedia_kemendikbud/models/user/user_profile_response.dart';
import 'package:paudpedia_kemendikbud/service/local/paud_local_datasource.dart';
import 'package:paudpedia_kemendikbud/service/remote/paud_remote_datasource.dart';

class PaudRepository {
  final PaudLocalDatasource local;
  final PaudRemoteDatasource remote;

  const PaudRepository({required this.local, required this.remote});

  void saveToken(String token) {
    local.saveToken(token);
  }

  Future<String?> getToken() {
    return local.getToken();
  }

  void saveIsUserLogin(bool token) {
    local.saveIsUserLogin(token);
  }

  Future<bool> getIsUserLogin() {
    return local.getIsUserLogin();
  }

  void saveUser(String user) {
    local.saveUserInfo(user);
  }

  // Forum
  Future<ForumLoginUserResponse?> getUserInfo() async {
    String userRaw = await local.getUserInfo() ?? "";

    if (userRaw.isNotEmpty) {
      return ForumLoginUserResponse.fromJson(jsonDecode(userRaw));
    } else {
      return null;
    }
  }

  Future<ForumLoginUserResponse> loginForum(FormData request) async {
    Response? response = await remote.loginForum(request);

    if (response?.statusCode != 200) {
      return ForumLoginUserResponse();
    }

    ForumLoginUserResponse user =
        ForumLoginUserResponse.fromJson(response?.data['user']);

    saveToken(response?.data['access_token']);
    saveUser(jsonEncode(user));
    saveIsUserLogin(true);

    return user;
  }

  Future<ApiResponse<String>> registerForum(FormData request) async {
    Response? response = await remote.registerForum(request);
    return ApiResponse(
        message: response?.data['message'],
        data: "",
        code: response?.data['code']);
  }

  Future<ApiResponse<String>> changePassword(FormData request) async {
    Response? response = await remote.changePassword(request);
    return ApiResponse(
        message: response?.data['error'] ?? response?.data['message'],
        data: "",
        code: response?.data['code']);
  }

  Future<ApiResponse<String>> forgetPassword(FormData formData) async {
    Response? response =
        await remote.forgetPassword(formData, await local.getToken());

    return ApiResponse(
        code: response?.data['code'],
        message: response?.data["message"] ?? response?.data["error"]);
  }

  Future<ApiResponse<UserProfileResponse>> getProfile() async {
    Response? response = await remote.getProfile(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ?? response?.data["error"]);
    }

    return ApiResponse(
        data: UserProfileResponse.fromJson(
            (response?.data['data'] as List).first));
  }

  Future<ApiResponse<String>> updateProfile(FormData request) async {
    Response? response =
        await remote.updateProfile(request, await local.getToken());

    if (response?.statusCode == 200 && response?.data['data'] != null) {
      ForumLoginUserResponse user = ForumLoginUserResponse.fromJson(
          (response?.data['data'] as List).first);
      saveUser(jsonEncode(user));
    }

    return ApiResponse(
        message: response?.data['error'] ?? response?.data['message'],
        data: "",
        code: response?.data['code']);
  }

  Future<ApiResponse<List<ForumSubjectResponse>>> getListSubject() async {
    Response? response = await remote.getListSubject(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(message: "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((subject) => ForumSubjectResponse.fromJson(subject))
            .toList());
  }

  Future<ApiResponse<List<ForumTogetherResponse>>> getForumList() async {
    Response? response =
        await remote.getListForumTogether(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(message: "There is something wrong in server");
    }
    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((forum) => ForumTogetherResponse.fromJson(forum))
            .toList());
  }

  Future<ApiResponse<ForumDetailResponse>> getForumDetail(String id) async {
    Response? response =
        await remote.getForumDetail(id, await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(message: "There is something wrong in server");
    }

    return ApiResponse(
        data: ForumDetailResponse.fromJson(
            (response?.data['data'] as List).first));
  }

  Future<ApiResponse<List<ForumTopicResponse>>> getListTopic() async {
    Response? response = await remote.getListTopic(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(message: "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((topic) => ForumTopicResponse.fromJson(topic))
            .toList());
  }

  Future<ApiResponse<TopicDetailResponse>> getTopicDetail(String id) async {
    Response? response =
        await remote.getTopicDetail(id, await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(message: "There is something wrong in server");
    }
    return ApiResponse(
        data: TopicDetailResponse.fromJson(
            (response?.data['data'] as List).first));
  }

  Future<ApiResponse<List<EventListResponse>>> getEventList(
      String month) async {
    Response? response =
        await remote.getEventList(month, await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          code: response?.data['code'],
          message: response?.data["message"] ?? response?.data["error"]);
    }

    return ApiResponse(
        code: response?.data['code'],
        data: (response?.data['data'] as List)
            .map((item) => EventListResponse.fromJson(item))
            .toList());
  }

  Future<ApiResponse<EventDetailResponse>> getEventDetail(String id) async {
    Response? response =
        await remote.getEventDetail(id, await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ?? response?.data["error"]);
    }

    return ApiResponse(
        data: EventDetailResponse.fromJson(
            (response?.data['data'] as List).first));
  }

  Future<ApiResponse<String>> postFormParticipant(FormData formData) async {
    Response? response =
        await remote.postFormParticipant(formData, await local.getToken());

    return ApiResponse(
        code: response?.data['code'],
        message: response?.data["message"] ?? response?.data["error"]);
  }

  Future<ApiResponse<String>> postFormComment(FormData formData) async {
    Response? response =
        await remote.postFormComment(formData, await local.getToken());

    return ApiResponse(
        code: response?.data['code'],
        message: response?.data["message"] ?? response?.data["error"]);
  }

  Future<ApiResponse<String>> postFormReport(FormData formData) async {
    Response? response =
        await remote.postFormReport(formData, await local.getToken());

    return ApiResponse(
        code: response?.data['code'],
        message: response?.data["message"] ?? response?.data["error"]);
  }

  Future<ApiResponse<String>> postResponseTopic(FormData formData) async {
    Response? response =
        await remote.postResponseTopic(formData, await local.getToken());

    return ApiResponse(
        code: response?.data['code'],
        message: response?.data["message"] ?? response?.data["error"]);
  }

  // Community
  Future<ApiResponse<List<CreativeTeacherDataResponse>>>
      getListCreativeTeacher() async {
    Response? response =
        await remote.getListCreativeTeacher(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((teacher) => CreativeTeacherDataResponse.fromJson(teacher))
            .toList());
  }

  Future<ApiResponse<List<ParentSharingResponse>>>
      getListParentSharing() async {
    Response? response =
        await remote.getListParentSharing(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((teacher) => ParentSharingResponse.fromJson(teacher))
            .toList());
  }

  Future<ApiResponse<PaudDetailResponse>> getCommunityDetail(String id) async {
    Response? response =
        await remote.getCommunityDetail(id, await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: PaudDetailResponse.fromJson(
            (response?.data['data'] as List).first));
  }

  // Gallery
  Future<ApiResponse<List<SingListResponse>>> getSingList() async {
    Response? response = await remote.getSingList(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((teacher) => SingListResponse.fromJson(teacher))
            .toList());
  }

  Future<ApiResponse<PaudDetailResponse>> getSingDetail(String id) async {
    Response? response = await remote.getSingDetail(id, await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: PaudDetailResponse.fromJson(
            (response?.data['data'] as List).first));
  }

  Future<ApiResponse<List<ReadingListResponse>>> getReadingList() async {
    Response? response = await remote.getReadingList(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((teacher) => ReadingListResponse.fromJson(teacher))
            .toList());
  }

  Future<ApiResponse<List<PlayingListResponse>>> getPlayingList() async {
    Response? response = await remote.getPlayingList(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((teacher) => PlayingListResponse.fromJson(teacher))
            .toList());
  }

  Future<ApiResponse<PaudDetailResponse>> getPalyingDetail(String id) async {
    Response? response =
        await remote.getPlayingDetail(id, await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: PaudDetailResponse.fromJson(
            (response?.data['data'] as List).first));
  }

  Future<ApiResponse<List<TellingListResponse>>> getTellingList() async {
    Response? response = await remote.getTellingList(await local.getToken());

    if (response?.statusCode != 200) {
      return ApiResponse(
          message: response?.data["message"] ??
              "There is something wrong in server");
    }

    return ApiResponse(
        data: (response?.data['data'] as List)
            .map((teacher) => TellingListResponse.fromJson(teacher))
            .toList());
  }

  Future? downloadFile(
      String url, String path, Function(int, int) onProgress) async {
    return await remote.downloadFile(
        url, path, await local.getToken(), onProgress);
  }
}
