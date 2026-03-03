part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  sendPassword,
  loading,
  authenticated,
  unAuthenticated,
  failure,
  changeIp,
}

class AuthState extends Equatable {
  const AuthState({
    this.status = AuthStatus.initial,
    this.authenticate,
    this.message,
  });

  final AuthStatus status;
  final Authenticate? authenticate;
  final String? message;

  AuthState copyWith({
    AuthStatus? status,
    Authenticate? authenticate,
    String? message,
  }) {
    return AuthState(
      status: status ?? this.status,
      authenticate: authenticate ?? this.authenticate,
      message: message,
    );
  }

  @override
  List<Object?> get props => [status, authenticate, message];

  @override
  String toString() =>
      "$status { owner: ${authenticate?.ownerPartyId} company: ${authenticate?.company?.name} "
      "user: ${authenticate?.user?.lastName ?? '?'} "
      //    "ApiKey: ${authenticate?.apiKey?.substring(0, 10)}...."
      " message: $message";
}
