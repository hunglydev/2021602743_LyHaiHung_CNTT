class ChatData {
  final String content;
  final bool isMe;
  final DateTime? createdAt;

  ChatData({
    required this.content,
    required this.isMe,
    this.createdAt,
  });

  factory ChatData.fromJson(Map<String, dynamic> json) {
    final isMe = json['response'] == null;
    final content = json['response'] ?? json['prompt'];
    return ChatData(
        content: content ?? '',
        isMe: isMe,
        createdAt: json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null);
  }

  Map<String, dynamic> toJson() {
    return {
      'prompt': content,
    };
  }
}
