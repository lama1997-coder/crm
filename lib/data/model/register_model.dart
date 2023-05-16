class RegisterModel {
  final String? userName, fullName, email, phoneNumber;
  final List<MoreInfo> moreInfo;

  RegisterModel(
      {required this.userName,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.moreInfo});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['userName'] = userName;
    data['fullName'] = fullName;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;
    data['moreInfo'] = moreInfo;
    if (moreInfo != null) {
      data["moreInfo"] = moreInfo.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class MoreInfo {
  final String? key, value;

  MoreInfo(this.key, this.value);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}
