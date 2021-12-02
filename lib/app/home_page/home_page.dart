import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokenpo/app/bloc/jokenpo_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = JokenpoBloc();
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          BlocBuilder<JokenpoBloc, JokenpoState>(
            bloc: bloc,
            builder: (context, state) {
              if (state is JokenpoInitialState) {
                return Column(
                  children: [
                    state.image,
                    Text(
                      state.message,
                      style: const TextStyle(color: Colors.white, fontSize: 26),
                    )
                  ],
                );
              } else if (state is JokenpoLoadedState) {
                return Column(
                  children: [
                    state.image,
                    Text(
                      state.message,
                      style: const TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ],
                );
              } else {
                return const Text("Erro");
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Image.asset("assets/tesoura.png"),
                onTap: () => bloc.add(JokenpoTesouraEvent()),
              ),
              InkWell(
                child: Image.asset("assets/pedra.png"),
                onTap: () => bloc.add(JokenpoPedraEvent()),
              ),
              InkWell(
                child: Image.asset("assets/papel.png"),
                onTap: () => bloc.add(JokenpoPapelEvent()),
              ),
            ],
          )
        ],
      ),
    );
  }
}
