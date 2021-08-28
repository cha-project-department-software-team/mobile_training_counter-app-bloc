import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {}

class CounterEventIncrease extends CounterEvent {
  final int currentNumber;
  CounterEventIncrease({this.currentNumber});
  @override
  List<Object> get props => [currentNumber];
}

class CounterEventDecrease extends CounterEvent {
  final int currentNumber;
  CounterEventDecrease({this.currentNumber});
  @override
  List<Object> get props => [currentNumber];
}
