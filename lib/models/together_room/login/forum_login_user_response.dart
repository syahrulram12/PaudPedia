class ForumLoginUserResponse {
  String iUser = "";
  String nUser = "";
  String nUserEmail = "";
  String nUserHp = "";
  String cUserSex = "";
  String cUserAs = "";
  String cUserApprove = "";
  String vUserCounter = "";
  String iRole = "";
  String dLastlogin = "";
  String nUserPict = "";
  String dUserCreate = "";
  String countWeb = "";
  String countApps = "";

  ForumLoginUserResponse(
      {this.iUser = "",
      this.nUser = "",
      this.nUserEmail = "",
      this.nUserHp = "",
      this.cUserSex = "",
      this.cUserAs = "",
      this.cUserApprove = "",
      this.vUserCounter = "",
      this.iRole = "",
      this.dLastlogin = "",
      this.nUserPict = "",
      this.dUserCreate = "",
      this.countWeb = "",
      this.countApps = ""});

  ForumLoginUserResponse.fromJson(Map<String, dynamic> json) {
    iUser = json['i_user'] ?? "";
    nUser = json['n_user'] ?? "";
    nUserEmail = json['n_user_email'] ?? "";
    nUserHp = json['n_user_hp'] ?? "";
    cUserSex = json['c_user_sex'] ?? "";
    cUserAs = json['c_user_as'] ?? "";
    cUserApprove = json['c_user_approve'] ?? "";
    vUserCounter = json['v_user_counter'] ?? "";
    iRole = json['i_role'] ?? "";
    dLastlogin = json['d_lastlogin'] ?? "";
    nUserPict = json['n_user_pict'] ?? "";
    dUserCreate = json['d_user_create'] ?? "";
    countWeb = json['count_web'] ?? "";
    countApps = json['count_apps'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['i_user'] = this.iUser;
    data['n_user'] = this.nUser;
    data['n_user_email'] = this.nUserEmail;
    data['n_user_hp'] = this.nUserHp;
    data['c_user_sex'] = this.cUserSex;
    data['c_user_as'] = this.cUserAs;
    data['c_user_approve'] = this.cUserApprove;
    data['v_user_counter'] = this.vUserCounter;
    data['i_role'] = this.iRole;
    data['d_lastlogin'] = this.dLastlogin;
    data['n_user_pict'] = this.nUserPict;
    data['d_user_create'] = this.dUserCreate;
    data['count_web'] = this.countWeb;
    data['count_apps'] = this.countApps;
    return data;
  }
}