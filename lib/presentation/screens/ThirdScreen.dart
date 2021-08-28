import 'package:counter_app_bloc/blocs/counter_bloc.dart';
import 'package:counter_app_bloc/events/counter_event.dart';
import 'package:counter_app_bloc/states/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Color thirdColor = Colors.red[700];

class ThirdScreen extends StatelessWidget {
  ThirdScreen(); //Constructor
  int currentNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
        backgroundColor: thirdColor,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            children: [
              Text(
                "The current number is: ",
                style: TextStyle(fontSize: 30),
              ),
              BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
                if (state is CounterStateRefresh) {
                  currentNumber = state.newNumber;
                }
                return Text(
                  currentNumber.toString(),
                  style: TextStyle(fontSize: 40),
                );
              }),
              SizedBox(height: 40),
              Container(
                height: 40,
                width: 150,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    "Screen 1",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 150,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/secondScreen');
                  },
                  child: Text(
                    "Screen 2",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "btn3_inc",
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(CounterEventIncrease(currentNumber: currentNumber));
              },
              child: Icon(Icons.add),
              backgroundColor: thirdColor,
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              heroTag: "btn3_dec",
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(CounterEventDecrease(currentNumber: currentNumber));
              },
              child: Icon(Icons.remove),
              backgroundColor: thirdColor,
            )
          ],
        ),
      ),
    );
  }
}
