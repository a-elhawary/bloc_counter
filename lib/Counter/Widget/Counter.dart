import 'package:bloc_counter/Counter/Bloc/cubit.dart';
import 'package:bloc_counter/Counter/Bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef  IntCallback(int value);

class Counter extends StatelessWidget {
  final IntCallback onChange;

  const Counter({@required this.onChange});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                  child: FlatButton(
                    onPressed: (){
                     CounterCubit.get(context).add();
                     onChange(CounterCubit.get(context).count);
                    },
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                ),
                SizedBox(width: 10.0,),
                Text(CounterCubit.get(context).count.toString()),
                SizedBox(width: 10.0,),
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blue,
                  child: FlatButton(
                    onPressed: (){
                      CounterCubit.get(context).sub();
                      onChange(CounterCubit.get(context).count);
                    },
                    child: Icon(Icons.remove,color: Colors.white,),
                  ),
                ),
              ],
            );
        },
      ),
    );
  }
}
