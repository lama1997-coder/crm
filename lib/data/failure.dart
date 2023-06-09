abstract class Failure {
  final String message;

  const Failure(this.message);

  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(String message) : super(message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(String message) : super(message);
}
class UserNotFound extends Failure {
  const UserNotFound(String message) : super(message);
}
class PageNotEqual extends Failure {
  const PageNotEqual(String message) : super(message);


}
