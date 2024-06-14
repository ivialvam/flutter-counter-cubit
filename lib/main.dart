import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_cubit/counter/app.dart';
import 'package:flutter_counter_cubit/couter_observer.dart';
// import 'package:flutter_counter_cubit/counter/cubit/counter_cubit.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());

  // CounterCubit counter = CounterCubit();
  // counter.increment();
  // counter.decrement();
  // counter.decrement();
}