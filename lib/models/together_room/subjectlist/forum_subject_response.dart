class ForumSubjectResponse {
  String iSubject = "";
  String nSubject = "";

  ForumSubjectResponse({this.iSubject = "", this.nSubject = ""});

  ForumSubjectResponse.fromJson(Map<String, dynamic> json) {
    iSubject = json['i_subject'];
    nSubject = json['n_subject'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['i_subject'] = this.iSubject;
    data['n_subject'] = this.nSubject;
    return data;
  }
}
