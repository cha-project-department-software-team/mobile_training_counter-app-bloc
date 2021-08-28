import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {}

class CounterStateRefresh extends CounterState {
  final int newNumber;
  CounterStateRefresh({this.newNumber});
  @override
  List<Object> get props => [newNumber];
}
