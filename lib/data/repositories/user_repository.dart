import 'package:ethiscan/domain/core/either.dart';
import 'package:ethiscan/domain/entities/app/api_error.dart';
import 'package:ethiscan/domain/entities/firestore/ethiscan_user.dart';

abstract class UserRepository {
  Future<Either<APIError, EthiscanUser>> getUserFromId(String uid);
  Future<Either<APIError, EthiscanUser>> addUser(EthiscanUser user);
  Future<void> updateUser(EthiscanUser user);
  Future<void> deleteUser(EthiscanUser user);
}
