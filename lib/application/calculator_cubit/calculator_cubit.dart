import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_lecture_app/domain/calculator/calculator_entity.dart';
import 'package:student_lecture_app/domain/calculator/history_entity.dart';

part 'calculator_cubit.freezed.dart';
part 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  late TextEditingController leftController;
  late TextEditingController rightController;

  CalculatorCubit() : super(CalculatorState.initial()) {
    leftController = TextEditingController()
      ..addListener(onLeftControllerChange);
    rightController = TextEditingController()
      ..addListener(onRightControllerChange);
  }

  void onLeftControllerChange() {
    inputLeftValue(leftController.text);
  }

  void onRightControllerChange() {
    inputRightValue(rightController.text);
  }

  void inputLeftValue(String val) {
    emit(state.unmodifed.copyWith.ent(leftValue: val));
  }

  void inputRightValue(String val) {
    emit(state.unmodifed.copyWith.ent(rightValue: val));
  }

  void chooseType(CalculatorType type) {
    emit(state.unmodifed.copyWith.ent(type: type));
  }

  void submit() {
    state.ent.failureOption.fold(
      () => state.ent.type.when(
        none: () {},
        add: () => saveToHistories(state.ent.addMethod),
        substract: () => saveToHistories(state.ent.substractMethod),
        multiply: () => saveToHistories(state.ent.multiplyMethod),
        divide: () => saveToHistories(state.ent.divideMethod),
        pow: () => saveToHistories(state.ent.powMethod),
      ),
      (failure) => emit(
        state.unmodifed.copyWith(showError: true),
      ),
    );
  }

  void saveToHistories(double value) {
    emit(state.unmodifed.copyWith(isValid: true).copyWith.ent(
          histories: state.ent.newHistory,
          value: value,
        ));
  }

  void restoreHistory(HistoryEntity ent) {
    leftController.removeListener(onLeftControllerChange);
    rightController.removeListener(onRightControllerChange);

    leftController.value = TextEditingValue(text: ent.leftValue);
    rightController.value = TextEditingValue(text: ent.rightValue);

    leftController.addListener(onLeftControllerChange);
    rightController.addListener(onRightControllerChange);

    emit(state.unmodifed.copyWith.ent(
      leftValue: ent.leftValue,
      rightValue: ent.rightValue,
      type: ent.type,
      histories: state.ent.removeHistory(ent),
    ));
  }
}
