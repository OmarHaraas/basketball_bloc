import 'package:basketball_counter_bloc/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  CounterCubit() : super(CounterAIncrementState());

  //Functions
  void TeamIncrementState(String team, int btnNumber) {
    if (team == 'A') {
      teamAPoints += btnNumber;
      //update the UI ..or.. cubitمن ال stateتطلع ال
      emit(CounterAIncrementState());
    } else {
      teamBPoints += btnNumber;
      //update the UI ..or.. cubitمن ال stateتطلع ال
      emit(CounterBIncrementState());
    }
  }

  void resetValues() {
    teamAPoints = teamBPoints = 0;
    emit(CounterAIncrementState());
    emit(CounterBIncrementState());
  }
}
