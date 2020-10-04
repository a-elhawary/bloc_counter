import 'package:bloc_counter/Counter/Bloc/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(InitialCounterState());

  static CounterCubit get(BuildContext context){
    return BlocProvider.of(context);
  }

  int count = 0;

  add(){
    count++;
    emit(AddCounterState());
  }

  sub(){
    count--;
    emit(SubCounterState());
  }
}