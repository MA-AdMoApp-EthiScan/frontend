const Unit unit = Unit();

class Unit {
  const Unit();

  @override
  bool operator ==(Object other) {
    return true;
  }

  @override
  int get hashCode => 1;

  @override
  String toString() {
    return '()';
  }
}

class Failure {}

abstract class Either<L extends Failure, R> {
  const Either();

  factory Either.left(L failure) = Left;
  factory Either.right(R value) = Right;

  T when<T>(
      {required T Function(L failure) left,
      required T Function(R value) right}) {
    if (this is Left) {
      return left((this as Left<L, R>).failure);
    }

    return right((this as Right<L, R>).value);
  }
}

class Left<L extends Failure, R> extends Either<L, R> {
  final L failure;

  Left(this.failure);
}

class Right<L extends Failure, R> extends Either<L, R> {
  final R value;

  Right(this.value);
}
