import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodStateNotifierProvider extends ConsumerWidget {
  const RiverpodStateNotifierProvider({super.key});

  void onSubmitName(WidgetRef ref, String value) {
    ref.watch(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    ref.watch(userProvider.notifier).updateAge(int.parse(value));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(user.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (value) => onSubmitName(ref, value),
              decoration: const InputDecoration(labelText: 'Enter Name'),
            ),
            TextField(
              onSubmitted: (value) => onSubmitAge(ref, value),
              decoration: const InputDecoration(labelText: 'Enter Age'),
            ),
            // Center(
            //   child: Text(user.age.toString()),
            // ),
          ],
        ),
      ),
    );
  }
}
