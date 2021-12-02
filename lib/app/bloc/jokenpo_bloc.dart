import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'jokenpo_event.dart';
part 'jokenpo_state.dart';

class JokenpoBloc extends Bloc<JokenpoEvent, JokenpoState> {
  JokenpoBloc() : super(JokenpoInitialState()) {
    on<JokenpoEvent>(_jokenpo);
  }
  _jokenpo(JokenpoEvent event, Emitter emit) {
    final List<String> listOptions = ["tesoura", "pedra", "papel"];
    final int number = Random().nextInt(3);
    String jokenpo = listOptions[number];
    Image image = Image.asset("assets/$jokenpo.png");

    if (event is JokenpoTesouraEvent) {
      if (jokenpo == "tesoura") {
        emit(JokenpoLoadedState(image: image, message: "Empate"));
      } else if (jokenpo == "pedra") {
        emit(JokenpoLoadedState(image: image, message: "Derrota"));
      } else {
        emit(JokenpoLoadedState(image: image, message: "Vitória"));
      }
    }

    if (event is JokenpoPedraEvent) {
      if (jokenpo == "tesoura") {
        emit(JokenpoLoadedState(image: image, message: "Vitória"));
      } else if (jokenpo == "pedra") {
        emit(JokenpoLoadedState(image: image, message: "Empate"));
      } else {
        emit(JokenpoLoadedState(image: image, message: "Derrota"));
      }
    }

    if (event is JokenpoPapelEvent) {
      if (jokenpo == "tesoura") {
        emit(JokenpoLoadedState(image: image, message: "Derrota"));
      } else if (jokenpo == "pedra") {
        emit(JokenpoLoadedState(image: image, message: "Vitória"));
      } else {
        emit(JokenpoLoadedState(image: image, message: "Empate"));
      }
    }
  }
}
