part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object> get props => [];
}

class AuthLoad extends AuthEvent {}

class AuthUpdateLocal extends AuthEvent {
  final Authenticate authenticate;
  const AuthUpdateLocal(this.authenticate);
  @override
  List<Object> get props => [authenticate];
}

class AuthRegister extends AuthEvent {
  final User user;
  final Locale? locale;
  const AuthRegister(this.user, {this.locale});
  @override
  List<Object> get props => [user];
}

class AuthLogin extends AuthEvent {
  final String username;
  final String password;
  // for registration continuation
  final String? companyName;
  final Currency? currency;
  final String? creditCardNumber;
  final String? nameOnCard;
  final String? cVC;
  final String? plan; // diyPlan, smallPlan, fullPlan
  final String? expireMonth;
  final String? expireYear;
  final bool? demoData;
  const AuthLogin(
    this.username,
    this.password, {
    this.companyName,
    this.currency,
    this.demoData,
    this.creditCardNumber,
    this.nameOnCard,
    this.cVC,
    this.plan,
    this.expireMonth,
    this.expireYear,
  });
}

class AuthResetPassword extends AuthEvent {
  final String username;
  const AuthResetPassword({required this.username});
}

class AuthChangePassword extends AuthEvent {
  final String username;
  final String oldPassword;
  final String newPassword;
  const AuthChangePassword(this.username, this.oldPassword, this.newPassword);
}

class AuthLoggedOut extends AuthEvent {
  final Authenticate? authenticate;
  const AuthLoggedOut({this.authenticate});
}
