class PostPostLoginAuthApiResp {
  String? status;
  String? message;
  Data? data;

  PostPostLoginAuthApiResp({this.status, this.message, this.data});

  PostPostLoginAuthApiResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (message != null) {
      data['message'] = message;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  String? accessToken;
  String? refreshToken;

  Data({this.accessToken, this.refreshToken});

  Data.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (accessToken != null) {
      data['accessToken'] = accessToken;
    }
    if (refreshToken != null) {
      data['refreshToken'] = refreshToken;
    }
    return data;
  }
}
// class Data {
//   Data();
//
//   Data.fromJson(Map<String, dynamic> json) {}
//
//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     return data;
//   }
// }
