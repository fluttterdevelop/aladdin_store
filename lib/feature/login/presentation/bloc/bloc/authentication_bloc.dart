import 'package:aladdin_store/feature/login/domain/usecase/get_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState()) {
    on<_GetAuthenticationStatus>((event, emit) async {
      await Future.delayed(Duration(seconds: 2));
      emit(state.copyWith(
          authenticationStatus: AuthenticationStatus.unauthenticated));
    });

   
    on<_AuthenticationLoginEvent>((event, emit) async {
      final response =
          await GetUserUseCase().call((event.username, event.password));

      response.either(
        (failure) {
          emit(state.copyWith(
              authenticationStatus: AuthenticationStatus.unauthenticated));
          event.onFailure('Failed to auth');
        },
        (user) {
          emit(state.copyWith(
            authenticationStatus: AuthenticationStatus.authenticated,
            authenticatedUser: user,
          ));

          event.onSuccess();
        },
      );
    }
    
    
    );
  
  
  
  }
}



