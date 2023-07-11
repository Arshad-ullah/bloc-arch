part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginEmailState extends LoginState {
  String? email;

  LoginEmailState({required this.email});
}

class LoginPasswordState extends LoginState {
  String? password;

  LoginPasswordState({required this.password});
}
