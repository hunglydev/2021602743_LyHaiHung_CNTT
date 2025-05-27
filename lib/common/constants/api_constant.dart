abstract class ApiConstant {
  // Chat
  static const String sendChat = "/api/analyze";
  static String getChatHistory({required int userId, int page = 1, int pageSize = 10}) =>
      "/api/getChatHistory?userId=$userId&page=$page&pageSize=$pageSize";

  //saveUser
  static const String saveUser = "/api/saveUser";

  //auth
  static const String login = '/api/login';
  static const String register = '/api/register';

  //notification
  static const String notifyUserByHealthData = '/api/notifyUserByHealthData';
}
