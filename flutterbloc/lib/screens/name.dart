import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameCubit extends Cubit<String> {
  NameCubit(String name) : super(name);
  //recebe o nome e muda
  void change(String name) => emit(name);
}

class NameContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NameCubit('Larissa'),
      child: NameView()
    );
  }
}

class NameView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}