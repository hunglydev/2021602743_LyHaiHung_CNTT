class ChatData {
  String content;
  bool isMe;

  ChatData({
    required this.content,
    required this.isMe,
  });

  factory ChatData.fromJson(Map<String, dynamic> json) {
    return ChatData(
      content: json['data'][0],
      isMe: false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'keywords': content,
    };
  }
}
