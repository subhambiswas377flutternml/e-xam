enum authPerson
{
  faculty,
  student,
}

class AuthType
{
  static final AuthType _authType = AuthType.internal();

  factory AuthType()
  {
    return _authType;
  }
  AuthType.internal();

  var currentAuthType;
}