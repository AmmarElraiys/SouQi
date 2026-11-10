class AppLink {
  static const String server = "http://10.0.2.2/souqi";
  static const String testServer = "$server/test.php";

  // ========================= Auth =========================
  static const String authserver = "$server/auth";
  static const String login = "$authserver/login.php";
  static const String signup = "$authserver/signup.php";
  static const String verifyCodeSignUp = "$authserver/verifycode.php";

  // ========================= Forget Password =========================

  static const String forgetPasswordServer = "$server/forgetpassword";
  static const String checkEmail = "$forgetPasswordServer/checkemail.php";
  static const String verifyCode = "$forgetPasswordServer/verifycode.php";
  static const String resetPassword = "$forgetPasswordServer/resetpassword.php";
}

// class AppLink {
//   static const String server = "https://eccomercesouqi.liveblog365.com/souqi";
//   static const String testServer = "$server/test.php";
// }
