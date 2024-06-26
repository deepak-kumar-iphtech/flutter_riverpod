import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/riverpod/riverpod_provider.dart';
import 'package:flutter_application_1/riverpod/state_notifier_provider.dart';
import 'package:flutter_application_1/riverpod/state_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider<String>((ref) => 'Flutter Riverpod');

final nameStateProvider = StateProvider<String?>((ref) => null);

final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(
    User(name: '', age: 0),
  ),
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        home: const RiverpodStateNotifierProvider()
        // const RiverpodStateProvider(),
        // const MyHomePage(),
        );
  }
}
