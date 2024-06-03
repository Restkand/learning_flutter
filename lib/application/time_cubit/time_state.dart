import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_state.freezed.dart';

@freezed
class TimeState with _$TimeState {
  const factory TimeState({
    required String hour,
    required String minute,
    required String second,
    required String amPm,
  }) = _TimeState;

  factory TimeState.initial() => TimeState(
        hour: '12',
        minute: '00',
        second: '00',
        amPm: 'AM',
      );
}
