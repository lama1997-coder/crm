
abstract class GenericState<T>  {
  final T data;
  final bool changed;
  final String error;
  const GenericState(this.data, this.changed, this.error);
}

class GenericInitialState<T> extends GenericState<T> {
  GenericInitialState(T data) : super(data, false, "");
  List<Object> get props => [changed];
}


class GenericUpdateState<T> extends GenericState<T> {
  GenericUpdateState(T data, bool changed, String error) : super(data, changed, error);
  List<Object> get props => [changed];
}

class GenericFailedState<T> extends GenericState<T> {
  GenericFailedState(T data, bool changed, String error) : super(data, changed, error);
  List<Object> get props => [changed, error];
}

