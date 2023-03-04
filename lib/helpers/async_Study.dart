import 'dart:math';

asyncStudy() {
  normalExecutation();
  basicAsynchrony();
  usingAsynchronousFunctions();
  expectingAsynchronousFunctions();
}

void normalExecutation() {
  print("\nExecuting normal execution");
  print("01");
  print("02");
  print("03");
  print("04");
  print("05");
}

void basicAsynchrony() {
  print("\nExecuting basic asynchrony");
  print("01");
  print("02");
  Future.delayed(const Duration(seconds: 2), () {
    print("03");
  });
  print("04");
  print("05");
}

void usingAsynchronousFunctions() {
  print("\nExecuting using asynchronous functions");
  print("A");
  print("B");
  getRandomInt(3).then(
    (value) {
      print("O número aleatório é ${value}");
    },
  );
  print("C");
  print("D");
}

void expectingAsynchronousFunctions() async {
  print("\nExpecting asynchronous functions");
  print("A");
  print("B");
  int number = await getRandomInt(4);
  print("O outro número aleatório é ${number}.");
  print("C");
  print("D");
}

Future<int> getRandomInt(int time) async {
  await Future.delayed(Duration(seconds: time));

  Random rng = Random();

  return rng.nextInt(10);
}
