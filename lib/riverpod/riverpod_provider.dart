import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final name = ref.watch(nameProvider);
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            Center(
              child: Text(name),
            ),
          ],
        ),
      );
    });
  }
}
