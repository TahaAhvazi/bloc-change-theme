part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState({required this.counter});
  final int counter;

  factory CounterState.initil() {
    return const CounterState(counter: 0);
  }

  @override
  List<Object> get props => [counter];

  @override
  String toString() {
    // TODO: implement toString
    return 'Counter bloc state is : $counter';
  }

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}
