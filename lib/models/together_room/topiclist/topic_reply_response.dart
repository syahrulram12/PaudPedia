class TopicReplyResponse {
  String iRespond = "";
  String iPost = "";
  String dRespond = "";
  String nRespondTitle = "";
  String eRespondContent = "";
  String nRespondImage = "";
  String nRespondVideo = "";
  String cRespondApprove = "";
  String iUser = "";
  String dRespondApprove = "";
  String iRespondApprovedby = "";
  String cRespondReport = "";
  String eRespondReport = "";
  String iUserReport = "";
  String nUser = "";
  String nUserPict = "";

  TopicReplyResponse(
      {this.iRespond = "",
      this.iPost = "",
      this.dRespond = "",
      this.nRespondTitle = "",
      this.eRespondContent = "",
      this.nRespondImage = "",
      this.nRespondVideo = "",
      this.cRespondApprove = "",
      this.iUser = "",
      this.dRespondApprove = "",
      this.iRespondApprovedby = "",
      this.cRespondReport = "",
      this.eRespondReport = "",
      this.iUserReport = "",
      this.nUser = "",
      this.nUserPict = ""});

  TopicReplyResponse.fromJson(Map<String, dynamic> json) {
    iRespond = json['i_respond'];
    iPost = json['i_post'];
    dRespond = json['d_respond'];
    nRespondTitle = json['n_respond_title'];
    eRespondContent = json['e_respond_content'];
    nRespondImage = json['n_respond_image'];
    nRespondVideo = json['n_respond_video'];
    cRespondApprove = json['c_respond_approve'];
    iUser = json['i_user'];
    dRespondApprove = json['d_respond_approve'];
    iRespondApprovedby = json['i_respond_approvedby'];
    cRespondReport = json['c_respond_report'];
    eRespondReport = json['e_respond_report'];
    iUserReport = json['i_user_report'];
    nUser = json['n_user'];
    nUserPict = json['n_user_pict'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['i_respond'] = this.iRespond;
    data['i_post'] = this.iPost;
    data['d_respond'] = this.dRespond;
    data['n_respond_title'] = this.nRespondTitle;
    data['e_respond_content'] = this.eRespondContent;
    data['n_respond_image'] = this.nRespondImage;
    data['n_respond_video'] = this.nRespondVideo;
    data['c_respond_approve'] = this.cRespondApprove;
    data['i_user'] = this.iUser;
    data['d_respond_approve'] = this.dRespondApprove;
    data['i_respond_approvedby'] = this.iRespondApprovedby;
    data['c_respond_report'] = this.cRespondReport;
    data['e_respond_report'] = this.eRespondReport;
    data['i_user_report'] = this.iUserReport;
    data['n_user'] = this.nUser;
    data['n_user_pict'] = this.nUserPict;
    return data;
  }
}
