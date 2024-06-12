import 'dart:async';

import 'package:bloc/bloc.dart';

import 'time_state.dart';

class TimeCubit extends Cubit<TimeState> {
  late Timer _timer;

  TimeCubit() : super(TimeState.initial()) {
    _initializeTime();
  }

  void _initializeTime() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      emit(TimeState(
        hour: _formatDigit(now.hour > 12
            ? now.hour - 12
            : now.hour == 0
                ? 12
                : now.hour),
        // hour: _formatDigit(now.hour),
        minute: _formatDigit(now.minute),
        second: _formatDigit(now.second),
        amPm: now.hour >= 12 ? 'PM' : 'AM',
      ));
    });
  }

  String _formatDigit(int digit) {
    return digit.toString().padLeft(2, '0');
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
