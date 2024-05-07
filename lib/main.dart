import 'dart:developer';

import 'package:counter_app/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ProviderCon())],
      child: const MaterialApp(home: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log("hhhhhhhh");
    final pro = Provider.of<ProviderCon>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'You Pressed Button',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Consumer<ProviderCon>(builder: (context, ppp, _) {
            return Text("${ppp.count.toString()}Times");
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pro.value();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
