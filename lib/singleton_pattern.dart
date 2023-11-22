import 'dart:math';

// class Singleton {
//   static Singleton _instance = Singleton.intance;
//   double randonNumber = 0;

//   Singleton() {
//     randonNumber = Random().nextDouble();
//   }

//   static Singleton get intance {
//     _instance ??= Singleton();
//     return _instance;
//   }
// }

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}
