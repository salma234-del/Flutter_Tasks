import 'package:flutter/material.dart';
import 'package:flutter_application_4/modules/counter/cubit/cubit.dart';
import 'package:flutter_application_4/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: ((context, state) {
          if (state is CounterMinusState) {
            print('Minus State ${state.counter}');
          }
           if (state is CounterPlusState) {
            print('Plus State ${state.counter}');
          }
        }),
        builder: ((context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('counter'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                      'M',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: Text(
                      'P',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
