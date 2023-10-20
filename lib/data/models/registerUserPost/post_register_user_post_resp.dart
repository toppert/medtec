class PostRegisterUserPostResp {
  String? status;
  String? message;
  Error? error;

  PostRegisterUserPostResp({this.status, this.message, this.error});

  PostRegisterUserPostResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    error = json['error'] != null ? Error.fromJson(json['error']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (message != null) {
      data['message'] = message;
    }
    if (error != null) {
      data['error'] = error?.toJson();
    }
    return data;
  }
}

class Error {
  String? name;

  Error({this.name});

  Error.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (name != null) {
      data['name'] = name;
    }
    return data;
  }
}
