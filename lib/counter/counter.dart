import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _CounterBase with _$Counter;

abstract class _CounterBase with Store {
  @observable
  int counterValue = 0;

  @action
  void increment() {
    counterValue++;
  }

  @action
  void decrement() {
    if (isPositive) counterValue--;
  }

  @action
  void restore() {
    counterValue = 0;
  }

  @computed
  bool get isPositive => counterValue > 0;
}
