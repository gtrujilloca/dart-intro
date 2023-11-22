// import 'package:hello_world/hello_world.dart' as hello_world;
import 'package:hello_world/strategy_pattern.dart' as strategy;
import 'package:hello_world/singleton_pattern.dart' as singleton;

void main(List<String> arguments) {
  // strategyTest();
  singletonTest();
}

void strategyTest() {
  final auth = strategy.StrategyContext(strategy.FacebookStrategy());
  final result = auth.login('facebook', '12345');
  print(result);

  auth.setStrategy(strategy.GoogleStrategy());

  final result2 = auth.login('google', '12345');
  print(result2);
}

void singletonTest() {
  final sing = singleton.Singleton();

  print(sing.randonNumber);
  print(sing.randonNumber);
  print(sing.randonNumber);
}
