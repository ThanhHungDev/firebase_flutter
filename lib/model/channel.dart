class Channel {
  String? name;
  String? avatar;
  String? message;

  Channel({this.name, this.avatar, this.message});

  factory Channel.fromJson(Map<String, dynamic> json) {
    return Channel(
        avatar: json["avatar"], message: json['message'], name: json['name']);
  }

  Map<String, dynamic> toJson() => {
        "name": name.toString(),
        "avatar": avatar.toString(),
        "message": message.toString(),
      };
}
