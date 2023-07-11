import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    //emailHandler
    on<EmailEvent>(emailHandler);

    //passwordHandler

    on<PasswordEvent>(passwordHandler);
  }

//emailHandler
  void emailHandler(EmailEvent event, Emitter<LoginState> emit) {
    log('EmailEvent:::>> ' + event.email!);
    emit(LoginEmailState(email: event.email));
  }

//passwordHandler
  void passwordHandler(PasswordEvent event, Emitter<LoginState> emit) {
    emit(LoginPasswordState(password: event.password));
  }
}
