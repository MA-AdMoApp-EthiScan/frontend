import 'package:ethiscan/domain/entities/jwt.dart';
import 'package:ethiscan/domain/entities/user.dart';
import 'package:ethiscan/domain/entities/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_user_bloc.freezed.dart';
part 'main_user_event.dart';
part 'main_user_state.dart';

@injectable
class MainUserBloc extends Bloc<MainUserEvent, MainUserState> {
  MainUserBloc() : super(MainUserState.initial()) {

    on<MainUserEvent>((event, emit) async {
      event.when(
        connect: (jwt) async {
          List<MetaData> metadataSubscriptions = [];
          User user = User(
              id: 'id',
              email: 'user@mail.com',
              name: 'User',
              preferences: UserPreferences(
                  metadataSubscriptions: metadataSubscriptions
              )
          ); // todo get user from jwt
          emit(MainUserState.connected(user: user));
        },
        firstLoad: () {
          //emit(const MainUserState.reloading());
          add(const MainUserEvent.autoConnect(minDelay: Duration(milliseconds: 2500)));
        },
        reload: () {
          //emit(const MainUserState.reloading());
          add(const MainUserEvent.autoConnect(minDelay: Duration(milliseconds: 500)));
        },
        accountCreated: (newUser) {
          emit(MainUserState.connected(user: newUser));
        },
        autoConnect: (minDelay) {
          //emit(const MainUserState.reloading());
          add(MainUserEvent.connect(Jwt('jwt')));
        },
        disconnect: () {
          emit(const MainUserState.disconnected());
        },
        reset: () {
          //emit(const MainUserState.reloading());
          add(const MainUserEvent.autoConnect(minDelay: Duration(milliseconds: 500)));
        },
        clearData: () {
          //emit(const MainUserState.reloading());
          add(const MainUserEvent.autoConnect(
              minDelay: Duration(milliseconds: 500)));
        }
      );
    });
  }
}