import 'dart:io';

void main() {
  goAllFunction();
}

void goAllFunction() async {
  task1();
  String result = await task2();
  task3(result);
}

void task1() {
  print('1 go');
}

Future<String> task2() async {
  String result;

  Duration threeSeconds = Duration(seconds: 3);
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('2 go');
  });
  return result;
}

void task3(String task2data) {
  print('3 go with $task2data');
}
