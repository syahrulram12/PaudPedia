
import 'package:paudpedia_kemendikbud/models/together_room/login/forum_login_user_response.dart';

class ForumLoginResponse {
  int code = 0;
  String message = "";
  ForumLoginUserResponse? user = ForumLoginUserResponse();
  String accessToken = "";

  ForumLoginResponse({this.code = 0,  this.message = "", this.user, this.accessToken = ""});

  ForumLoginResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    user = json['user'] != null
        ? new ForumLoginUserResponse.fromJson(json['user'])
        : ForumLoginUserResponse();
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['user'] = this.user?.toJson();
    data['access_token'] = this.accessToken;
    return data;
  }
}
