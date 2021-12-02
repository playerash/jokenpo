part of 'jokenpo_bloc.dart';

@immutable
abstract class JokenpoEvent {}

class JokenpoTesouraEvent extends JokenpoEvent{}

class JokenpoPedraEvent extends JokenpoEvent{}

class JokenpoPapelEvent extends JokenpoEvent{}