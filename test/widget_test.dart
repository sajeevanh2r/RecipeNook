import 'package:flutter_test/flutter_test.dart';
import 'package:recipe_nook/main.dart';

void main() {
  testWidgets('App smoke test - verifies app loads', (WidgetTester tester) async {
    // 1. Build our app and trigger a frame.
    // Changed "MyApp" to "RecipeNookApp" to match your main.dart
    await tester.pumpWidget(const RecipeNookApp());

    // 2. Since your app uses GoRouter and starts with a Splash Screen or Onboarding,
    // we just check if the MaterialApp/Router is successfully initialized.
    // This replaces the counter '0' and '1' checks which no longer exist.
    expect(find.byType(RecipeNookApp), findsOneWidget);
  });
}