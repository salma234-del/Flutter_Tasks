import 'package:flutter/material.dart';
import 'package:flutter_application_4/modules/counter/cubit/cubit.dart';
import 'package:flutter_application_4/modules/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: ((context, state) {
          if (state is CounterMinusState) {
            debugPrint('Minus State ${state.counter}');
          }
           if (state is CounterPlusState) {
           debugPrint('Plus State ${state.counter}');
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
                    child: const Text(
                      'M',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    '${CounterCubit.get(context).counter}',
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text(
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
