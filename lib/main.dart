import 'package:counter_bloc/blocs/counter/counter_bloc.dart';
import 'package:counter_bloc/blocs/theme/theme_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: BlocProvider<ThemeBloc>(
        create: (context) => ThemeBloc(),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              title: 'My Counter Cubit',
              theme: state.appTheme == AppTheme.light
                  ? ThemeData.light()
                  : ThemeData.dark(),
              home: const HomePage(),
            );
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int random = Random().nextInt(10);
            // ignore: avoid_print
            print("Random intiger is : $random");
            context.read<ThemeBloc>().add(ChangeThemeEvent(random));
          },
          child: const Text(
            "Change Theme",
          ),
        ),
      ),
    );
  }
}

class SecoundPage extends StatelessWidget {
  const SecoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Secound Page"),
        centerTitle: true,
      ),
      body: const Center(child: Text("Secound Screen !")),
    );
  }
}
