class ForumDetailReplyResponse {
  String iComment = "";
  String iPost = "";
  String dComment = "";
  String eComment = "";
  String iUser = "";
  String cCommentReport = "";
  String eCommentReport = "";
  String iUserReport = "";
  String nCommentNama = "";
  String nUser = "";
  String nUserPict = "";

  ForumDetailReplyResponse(
      {this.iComment = "",
      this.iPost = "",
      this.dComment = "",
      this.eComment = "",
      this.iUser = "",
      this.cCommentReport = "",
      this.eCommentReport = "",
      this.iUserReport = "",
      this.nCommentNama = "",
      this.nUser = "",
      this.nUserPict = ""});

  ForumDetailReplyResponse.fromJson(Map<String, dynamic> json) {
    iComment = json['i_comment'];
    iPost = json['i_post'];
    dComment = json['d_comment'];
    eComment = json['e_comment'];
    iUser = json['i_user'];
    cCommentReport = json['c_comment_report'];
    eCommentReport = json['e_comment_report'];
    iUserReport = json['i_user_report'];
    nCommentNama = json['n_comment_nama'];
    nUser = json['n_user'];
    nUserPict = json['n_user_pict'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['i_comment'] = this.iComment;
    data['i_post'] = this.iPost;
    data['d_comment'] = this.dComment;
    data['e_comment'] = this.eComment;
    data['i_user'] = this.iUser;
    data['c_comment_report'] = this.cCommentReport;
    data['e_comment_report'] = this.eCommentReport;
    data['i_user_report'] = this.iUserReport;
    data['n_comment_nama'] = this.nCommentNama;
    data['n_user'] = this.nUser;
    data['n_user_pict'] = this.nUserPict;
    return data;
  }
}
