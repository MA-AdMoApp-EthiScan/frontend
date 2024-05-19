import 'package:bloc/bloc.dart';
import 'package:ethiscan/domain/entities/ethiscan_user.dart';
import 'package:ethiscan/data/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ethiscan/utils/exceptions.dart';

part 'main_user_bloc.freezed.dart';
part 'main_user_event.dart';
part 'main_user_state.dart';

@injectable
class MainUserBloc extends Bloc<MainUserEvent, MainUserState> {
  final AuthRepository _authRepository;

  MainUserBloc(this._authRepository) : super(MainUserState.initial()) {
    on<MainUserEvent>((event, emit) async {
      // ~~~ Authentication ~~~
      await event.when(connect: (email, password) async {
        emit(const MainUserState.reloading());

        if (FirebaseAuth.instance.currentUser != null) {
          await reconnectCurrentUser(emit);
        } else {
          try {
            UserCredential userCredential =
                await _authRepository.logIn(email: email, password: password);
            EthiscanUser user = EthiscanUser(firebaseUser: userCredential.user);
            emit(MainUserState.connected(user: user));
          } on FirebaseAuthException catch (e) {
            emit(MainUserState.error(false, getAuthenticationExceptionFromCode(e.code).toString()));
          }
        }
      }, goRegister: () {
        emit(const MainUserState.disconnected(true));
      }, goLogin: () {
        emit(const MainUserState.disconnected(false));
      }, register: (email, password) async {
        try {
          UserCredential userCredential =
              await _authRepository.signUp(email: email, password: password);
          EthiscanUser user = EthiscanUser(firebaseUser: userCredential.user);
          emit(MainUserState.connected(user: user));
        } on FirebaseAuthException catch (e) {
          emit(MainUserState.error(true, e.message ?? ""));
          getAuthenticationExceptionFromCode(e.code);
        }
      }, autoConnect: (minDelay) async {
        await reconnectCurrentUser(emit);
      }, disconnect: () async {
        await FirebaseAuth.instance.signOut();
        emit(const MainUserState.disconnected(false));
      });
    });
  }

  Future<void> reconnectCurrentUser(Emitter<MainUserState> emit) async {
    if (FirebaseAuth.instance.currentUser != null) {
      emit(MainUserState.connected(
          user:
              EthiscanUser(firebaseUser: FirebaseAuth.instance.currentUser!)));
    } else {
      emit(const MainUserState.disconnected(false));
    }
  }
}
