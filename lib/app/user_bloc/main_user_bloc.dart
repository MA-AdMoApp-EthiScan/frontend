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
      await event.when(
          connect: (email, password) async {
            emit(const MainUserState.reloading());
            try {
              UserCredential userCredential = await _authRepository.signIn(email, password);
              EthiscanUser user = EthiscanUser(
                id: userCredential.user!.uid,
                name: userCredential.user!.displayName!,
                email: userCredential.user!.email!,
              );
              emit(MainUserState.connected(user: user));
            } on FirebaseAuthException catch (e) {
              emit(const MainUserState.disconnected());
            }
          },
          firstLoad: () async {
            //emit(const MainUserState.reloading());
            add(const MainUserEvent.autoConnect(
                minDelay: Duration(milliseconds: 2500)));
          },
          reload: () async {
            //emit(const MainUserState.reloading());
            add(const MainUserEvent.autoConnect(
                minDelay: Duration(milliseconds: 500)));
          },
          accountCreated: (newUser) async {
            emit(MainUserState.connected(user: newUser));
          },
          autoConnect: (minDelay) async {
            //emit(const MainUserState.reloading());
            //add(MainUserEvent.connect('coco', 'coco'));
            emit(const MainUserState.disconnected());
          },
          disconnect: () async {
            emit(const MainUserState.disconnected());
          },
          reset: () async {
            //emit(const MainUserState.reloading());
            add(const MainUserEvent.autoConnect(
                minDelay: Duration(milliseconds: 500)));
          },
          clearData: () async {
            //emit(const MainUserState.reloading());
            add(const MainUserEvent.autoConnect(
                minDelay: Duration(milliseconds: 500)));
          });
        }
      );
  }
}
