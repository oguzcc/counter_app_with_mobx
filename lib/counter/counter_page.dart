import 'package:flutter_mobx/flutter_mobx.dart';

import '../../core/constants/paddings.dart';
import '../../core/constants/strings.dart';
import 'package:flutter/material.dart';

import 'counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterView();
  }
}

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  final _counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(Strings.counterPageTitle),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: Observer(builder: (_) {
              return Text(
                '${_counter.counterValue}',
                style: Theme.of(context).textTheme.headline1,
              );
            }),
          ),
          Padding(
            padding: const Paddings.onlyBottom96(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: _counter.decrement,
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: _counter.restore,
                  child: const Icon(Icons.restore),
                ),
                FloatingActionButton(
                  onPressed: _counter.increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
