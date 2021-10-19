import 'package:flutter_driver/flutter_driver.dart';

class HomePage {
  final counterTextFinder = find.byValueKey('counter');
  final buttonFinder = find.byTooltip('Increment');

  late FlutterDriver _driver;

  // Constructor
  HomePage(FlutterDriver driver) {
    this._driver = driver;
  }

  Future<String> getCounterValue() async {
    return await _driver.getText(counterTextFinder);
  }
}
