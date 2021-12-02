part of 'jokenpo_bloc.dart';

@immutable
abstract class JokenpoState {}

class JokenpoInitialState extends JokenpoState {
  final Image image = Image.asset("assets/padrao.png");
  final String message = "Selecione:";
}

class JokenpoLoadedState extends JokenpoState {
  final Image image;
  final String message;

  JokenpoLoadedState({
    required this.image,
    required this.message,
  });
}
