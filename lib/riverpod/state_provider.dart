import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodStateProvider extends ConsumerWidget {
  const RiverpodStateProvider({super.key});

  void onSubmit(String value, WidgetRef ref) {
    ref.read(nameStateProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameStateProvider) ?? '';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
                onSubmitted: (value) => onSubmit(value, ref),
                decoration: const InputDecoration(labelText: 'Enter Text')),
            Center(
              child: Text(name),
            ),
          ],
        ),
      ),
    );
  }
}
