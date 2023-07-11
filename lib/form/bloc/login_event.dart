part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class EmailEvent extends LoginEvent {
  String? email;

  EmailEvent({required this.email});
}

class PasswordEvent extends LoginEvent {
  String? password;

  PasswordEvent({required this.password});
}
