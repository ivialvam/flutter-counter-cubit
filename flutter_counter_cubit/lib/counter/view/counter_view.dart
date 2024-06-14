import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_cubit/counter/counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state');
          },
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton (
            key: const Key('counterView_increment_fab'),
            child: const Icon(Icons.add),
            onPressed: () {
              context.read<CounterCubit>().increment(); // panggil CounterCubit.increment(), nambah +1
            },
          ),

          FloatingActionButton (
            key: const Key('counterView_decrement_fab'),
            child: const Icon(Icons.remove),
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
          ),

          FloatingActionButton (
            key: const Key('counterView_multiply_fab'),
            child: const Icon(Icons.close),
            onPressed: () {
              context.read<CounterCubit>().multiply();
            },
          ),

          FloatingActionButton (
            key: const Key('counterView_decrease_fab'),
            child: const Icon(Icons.exposure_minus_2),
            onPressed: () {
              context.read<CounterCubit>().decrease();
            },
          ),

          FloatingActionButton (
            key: const Key('counterView_reset_fab'),
            child: const Icon(Icons.refresh),
            onPressed: () {
              context.read<CounterCubit>().reset();
            },
          ),
        ],
      ),
    );
  }
}