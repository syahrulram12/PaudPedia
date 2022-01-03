import 'package:paudpedia_kemendikbud/models/community/detail/paud_recommendation_response.dart';
import 'package:paudpedia_kemendikbud/models/community/detail_type.dart';

class PaudDetailResponse {
  String iPost = "";
  String dPost = "";
  String iSubject = "";
  String dPostPublish = "";
  String tPostPublish = "";
  String nPostTitle = "";
  String ePostContent = "";
  String vPostVisit = "";
  String nPostImage = "";
  String nPostVideo = "";
  String nPostAudio = "";
  String nPostPdf = "";
  String iStatuspost = "";
  String iPostLinkslider = "";
  String iKanal = "";
  String iParent = "";
  String iUser = "";
  String vFbshares = "";
  String vTwttrshares = "";
  String vGplusshares = "";
  String cPostRespond = "";
  String cPostComment = "";
  String nPostUrlflip = "";
  String iPostPlatform = "";
  String cPostFliporientation = "";
  String nThumbInfografis = "";
  String iProgram = "";
  String thumbnail = "";
  DetailType type = DetailType.ARTICLE;
  List<PaudRecommendationResponse>? rekomendasi = [];

  PaudDetailResponse(
      {this.iPost = "",
      this.dPost = "",
      this.iSubject = "",
      this.dPostPublish = "",
      this.tPostPublish = "",
      this.nPostTitle = "",
      this.ePostContent = "",
      this.vPostVisit = "",
      this.nPostImage = "",
      this.nPostVideo = "",
      this.nPostAudio = "",
      this.nPostPdf = "",
      this.iStatuspost = "",
      this.iPostLinkslider = "",
      this.iKanal = "",
      this.iParent = "",
      this.iUser = "",
      this.vFbshares = "",
      this.vTwttrshares = "",
      this.vGplusshares = "",
      this.cPostRespond = "",
      this.cPostComment = "",
      this.nPostUrlflip = "",
      this.iPostPlatform = "",
      this.cPostFliporientation = "",
      this.nThumbInfografis = "",
      this.iProgram = "",
      this.thumbnail = "",
      this.type = DetailType.ARTICLE,
      this.rekomendasi});

  PaudDetailResponse.fromJson(Map<String, dynamic> json) {
    iPost = json['i_post'];
    dPost = json['d_post'];
    iSubject = json['i_subject'];
    dPostPublish = json['d_post_publish'];
    tPostPublish = json['t_post_publish'];
    nPostTitle = json['n_post_title'];
    ePostContent = json['e_post_content'];
    vPostVisit = json['v_post_visit'];
    nPostImage = json['n_post_image'];
    nPostVideo = json['n_post_video'];
    nPostAudio = json['n_post_audio'];
    nPostPdf = json['n_post_pdf'];
    iStatuspost = json['i_statuspost'];
    iPostLinkslider = json['i_post_linkslider'];
    iKanal = json['i_kanal'];
    iParent = json['i_parent'];
    iUser = json['i_user'];
    vFbshares = json['v_fbshares'];
    vTwttrshares = json['v_twttrshares'];
    vGplusshares = json['v_gplusshares'];
    cPostRespond = json['c_post_respond'];
    cPostComment = json['c_post_comment'];
    nPostUrlflip = json['n_post_urlflip'];
    iPostPlatform = json['i_post_platform'];
    cPostFliporientation = json['c_post_fliporientation'];
    nThumbInfografis = json['n_thumb_infografis'];
    iProgram = json['i_program'];
    thumbnail = json['thumbnail'];
    type = json['type'] == 'artikel' ? DetailType.ARTICLE : DetailType.VIDEO;
    if (json['rekomendasi'] != null) {
      rekomendasi = <PaudRecommendationResponse>[];
      json['rekomendasi'].forEach((v) {
        rekomendasi?.add(new PaudRecommendationResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['i_post'] = this.iPost;
    data['d_post'] = this.dPost;
    data['i_subject'] = this.iSubject;
    data['d_post_publish'] = this.dPostPublish;
    data['t_post_publish'] = this.tPostPublish;
    data['n_post_title'] = this.nPostTitle;
    data['e_post_content'] = this.ePostContent;
    data['v_post_visit'] = this.vPostVisit;
    data['n_post_image'] = this.nPostImage;
    data['n_post_video'] = this.nPostVideo;
    data['n_post_audio'] = this.nPostAudio;
    data['n_post_pdf'] = this.nPostPdf;
    data['i_statuspost'] = this.iStatuspost;
    data['i_post_linkslider'] = this.iPostLinkslider;
    data['i_kanal'] = this.iKanal;
    data['i_parent'] = this.iParent;
    data['i_user'] = this.iUser;
    data['v_fbshares'] = this.vFbshares;
    data['v_twttrshares'] = this.vTwttrshares;
    data['v_gplusshares'] = this.vGplusshares;
    data['c_post_respond'] = this.cPostRespond;
    data['c_post_comment'] = this.cPostComment;
    data['n_post_urlflip'] = this.nPostUrlflip;
    data['i_post_platform'] = this.iPostPlatform;
    data['c_post_fliporientation'] = this.cPostFliporientation;
    data['n_thumb_infografis'] = this.nThumbInfografis;
    data['i_program'] = this.iProgram;
    data['thumbnail'] = this.thumbnail;
    data['type'] = this.type;
    if (this.rekomendasi != null) {
      data['rekomendasi'] = this.rekomendasi?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
