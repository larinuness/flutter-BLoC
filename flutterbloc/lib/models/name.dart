import 'package:flutter_bloc/flutter_bloc.dart';

//o estado é uma uma string, mas poderia ser um com varios valores
class NameCubit extends Cubit<String> {
  NameCubit(String name) : super(name);

  void change(String name) => emit(name);
}
