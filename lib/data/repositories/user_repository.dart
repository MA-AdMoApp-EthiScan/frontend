import 'package:ethiscan/domain/entities/user.dart';

abstract class UserRepository {
  Future<EthiscanUser> getUserFromId(String uid);
  Future<void> addUser(EthiscanUser user);
  Future<void> updateUser(EthiscanUser user);
  Future<void> deleteUser(EthiscanUser user);
}
