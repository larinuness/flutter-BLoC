import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//o estado do contador é um inteiro
//o Cubit vai gerenciar o estado, que no caso do counter seria to tipo inteiro
class CounterCubit extends Cubit<int> {
  //estado inicial é 0
  CounterCubit() : super(0);
  //emit, "vai emitir um novo evento e avisa o builder"
  //evento seria o estado -1
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
  /*O estado é o int, e o gerenciado do estado seria a classes CounterCubit 
  e seus comportamentos(increment e decrement)*/
}

class CounterContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //blockProvider vai juntar o gerenciador com a view
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
      ),
      body: Center(
        //recebe o evento do emit
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state',
                style: TextStyle(fontSize: 24.0, color: Colors.black));
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              //abordagem 1 de como acessar o BLoC
              context.read<CounterCubit>().decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
