class PostPostForgotPasswordResp {
  String? status;
  Data? data;
  String? message;

  PostPostForgotPasswordResp({this.status, this.data, this.message});

  PostPostForgotPasswordResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    if (message != null) {
      data['message'] = message;
    }
    return data;
  }
}

class Data {
  Data();

  Data.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}
