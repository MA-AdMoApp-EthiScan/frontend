import 'package:bloc/bloc.dart';
import 'package:ethiscan/domain/entities/user.dart';
import 'package:ethiscan/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_user_bloc.freezed.dart';
part 'main_user_event.dart';
part 'main_user_state.dart';

@injectable
class MainUserBloc extends Bloc<MainUserEvent, MainUserState> {
  final AuthRepository _authRepository;

  MainUserBloc(
    this._authRepository,
  ) : super(MainUserState.initial()) {
    on<MainUserEvent>((event, emit) async {
      event.when(connect: (email, password) async {
        UserCredential user_credential =
            await _authRepository.signIn(email, password);
        if (user_credential != null) {
          EthiscanUser user = EthiscanUser(
            id: user_credential.user!.uid,
            name: "coco",
            email: user_credential.user!.email!,
          );
          emit(MainUserState.connected(user: user));
        } else {
          emit(const MainUserState.disconnected());
        }
      }, firstLoad: () {
        //emit(const MainUserState.reloading());
        add(const MainUserEvent.autoConnect(
            minDelay: Duration(milliseconds: 2500)));
      }, reload: () {
        //emit(const MainUserState.reloading());
        add(const MainUserEvent.autoConnect(
            minDelay: Duration(milliseconds: 500)));
      }, accountCreated: (newUser) {
        emit(MainUserState.connected(user: newUser));
      }, autoConnect: (minDelay) {
        //emit(const MainUserState.reloading());
        add(MainUserEvent.connect('coco', 'coco'));
      }, disconnect: () {
        emit(const MainUserState.disconnected());
      }, reset: () {
        //emit(const MainUserState.reloading());
        add(const MainUserEvent.autoConnect(
            minDelay: Duration(milliseconds: 500)));
      }, clearData: () {
        //emit(const MainUserState.reloading());
        add(const MainUserEvent.autoConnect(
            minDelay: Duration(milliseconds: 500)));
      });
    });
  }
}
