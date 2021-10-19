import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import '../pages/home_page.dart';

StepDefinitionGeneric InitialStateOfApp() {
  return given<FlutterWorld>(
    'I test the initial state of the app',
        (context) async {
          // Instantiate homepage
          HomePage homePage = HomePage(context.world.driver!);

          // Verify the counter starts at 0
          context.expectMatch(await homePage.getCounterValue(), "0");
    },
  );
}
