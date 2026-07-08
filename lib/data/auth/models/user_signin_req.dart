// Same idea as UserCreationReq, but signin only needs email + password.
class UserSigninReq {
  String? email;
  String? password;

  UserSigninReq({
    required this.email,   // set on page 1 (email page)
    this.password,         // NOT required — filled in on page 2 (password page)
  });
}