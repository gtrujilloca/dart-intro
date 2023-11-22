abstract class Strategy {
  bool login(String user, String password);
}

class StrategyContext {
  Strategy _strategy;

  StrategyContext(this._strategy);

  setStrategy(Strategy strategy) {
    _strategy = strategy;
  }

  bool login(String user, String password) {
    return _strategy.login(user, password);
  }
}

class FacebookStrategy implements Strategy {
  @override
  bool login(String user, String password) {
    print('login with facebook');
    if (user == 'facebook' && password == '12345') {
      return true;
    }
    return false;
  }
}

class GoogleStrategy implements Strategy {
  @override
  bool login(String name, String password) {
    print('login with google');

    if (name == 'google' && password == '12345') {
      return true;
    }

    return false;
  }
}
