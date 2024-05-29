import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:student_lecture_app/domain/calculator/history_entity.dart';
import 'package:student_lecture_app/domain/core/form_failure.dart';
import 'package:student_lecture_app/domain/core/form_validator.dart';

part 'calculator_entity.freezed.dart';

@freezed
class CalculatorEntity with _$CalculatorEntity {
  const CalculatorEntity._();

  factory CalculatorEntity({
    required double value,
    required String leftValue,
    required String rightValue,
    required CalculatorType type,
    required List<HistoryEntity> histories,
  }) = _CalculatorEntity;

  factory CalculatorEntity.empty() => CalculatorEntity(
        value: 0,
        leftValue: "",
        rightValue: "",
        type: const CalculatorType.none(),
        histories: [],
      );

  Option<FormFailure> get failureOption {
    return FormValidator.emptyValidator(leftValue)
        .andThen(() => FormValidator.emptyValidator(rightValue))
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  // Either<String, Unit> get _emptyLeftErrorMsg {
  //   return FormValidator.emptyValidator(leftValue).fold(
  //     (failure) => failure.maybeWhen(
  //       orElse: () => right(unit),
  //       empty: () => left('Left form must be not empty'),
  //     ),
  //     (_) => right(unit),
  //   );
  // }

  // Either<String, Unit> get _emptyRightErrorMsg {
  //   return FormValidator.emptyValidator(rightValue).fold(
  //     (failure) => failure.maybeWhen(
  //       orElse: () => right(unit),
  //       empty: () => left('Right form must be not empty'),
  //     ),
  //     (_) => right(unit),
  //   );
  // }

  // String? get textErrorMsg {
  //   return _emptyLeftErrorMsg.andThen(() => _emptyRightErrorMsg).fold(
  //         (errorMsg) => errorMsg,
  //         (_) => null,
  //       );
  // }
  //  ERROR di textErrorMsg andThen(() => _emptyRightErrorMsg) : the argument type 'either<string, unit> function' can't be assigned to the parameter type 'either<string, dynamic>'

  String? get textErrorMsg {
    // Memeriksa jika pembagian dengan nol
    if (rightValue == "0" && type == const CalculatorType.divide()) {
      return 'Cannot divide by zero';
    }

    // Memeriksa jika nilai kiri kosong
    if (leftValue.isEmpty) {
      return 'Left form must not be empty';
    }

    // Memeriksa jika nilai kanan kosong
    if (rightValue.isEmpty) {
      return 'Right form must not be empty';
    }

    return null;
  }

  // Ngerubah 5.0 jdi 5 && ngerubah 1.99999 jadi 1.99
  String? get convertValue {
    // Jika nilai adalah 0, maka kembalikan '0'
    if (value == 0) {
      return '0';
    }

    // Jika nilai tidak 0, maka format nilai dengan 2 digit di belakang koma
    String formattedValue = value.toStringAsFixed(2);

    // Menghapus trailing 0 di belakang koma jika ada
    while (formattedValue.endsWith('0')) {
      formattedValue = formattedValue.substring(0, formattedValue.length - 1);
    }

    // Menghapus '.' jika hanya ada trailing 0 setelah koma
    if (formattedValue.endsWith('.')) {
      formattedValue = formattedValue.substring(0, formattedValue.length - 1);
    }

    return formattedValue;
  }

  bool get _isAlreadyAddedinHisotires {
    final newHistories = [...histories];

    final isFound = newHistories.any((element) =>
        element.leftValue == leftValue &&
        element.type == type &&
        element.rightValue == rightValue);

    return isFound;
  }

  List<HistoryEntity> get newHistory {
    final newEnt = HistoryEntity.newEntity(
        leftValue: leftValue, rightValue: rightValue, type: type);

    // Semisalkan Hisotry sudah ada di List 'Histories', maka kita ga add history yang  'newEnt' ke list histories kita
    if (!_isAlreadyAddedinHisotires) {
      final newHistories = [...histories, newEnt];
      return newHistories;
    }

    return histories;
  }

  List<HistoryEntity> removeHistory(HistoryEntity ent) {
    final newHisotries = [...histories];

    newHisotries.removeWhere((element) => element == ent);

    return newHisotries;
  }

  double get addMethod {
    return double.parse(leftValue) + double.parse(rightValue);
  }

  double get substractMethod {
    return double.parse(leftValue) - double.parse(rightValue);
  }

  double get multiplyMethod {
    return double.parse(leftValue) * double.parse(rightValue);
  }

  // Either<String, double> get divideMethod {
  //   if (rightValue == "0") {
  //     return left("Division by zero is not allowed");
  //   } else {
  //     return right(double.parse(leftValue) / double.parse(rightValue));
  //   }
  // }

  double get divideMethod {
    return double.parse(leftValue) / double.parse(rightValue);
  }

  double get powMethod {
    return pow(double.parse(leftValue), double.parse(rightValue)).toDouble();
  }
}

@freezed
class CalculatorType with _$CalculatorType {
  const factory CalculatorType.none() = _None;
  const factory CalculatorType.add() = _Add;
  const factory CalculatorType.substract() = _Substract;
  const factory CalculatorType.multiply() = _Multiply;
  const factory CalculatorType.divide() = _Divide;
  const factory CalculatorType.pow() = _Pow;
}
