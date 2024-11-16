// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/screen/main/main_cubit.dart';
import 'package:portfolio/screen/main/main_screen.dart';

// TODO : localization en, id.
// TODO : add frame to preview apps Inkare Company

void main() {
  usePathUrlStrategy();
  runApp(const App());
}

class App extends StatelessWidget {
  static final GlobalKey<ScaffoldMessengerState> scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (_) => MainCubit(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (_, state) {
          return MaterialApp(
            scaffoldMessengerKey: App.scaffoldKey,
            title: 'Portfolio - Anjar Naufal S',
            debugShowCheckedModeBanner: false,
            themeMode: state.themeMode,
            theme: ThemeData(
              useMaterial3: true,
              fontFamily: 'RobotoMono',
              colorScheme: state.dayColorScheme,
            ),
            darkTheme: ThemeData(
              useMaterial3: true,
              fontFamily: 'RobotoMono',
              colorScheme: state.nightColorScheme,
            ),
            home: const MainScreen(),
          );
        },
      ),
    );
  }
}
