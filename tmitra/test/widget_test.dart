import 'package:flutter_test/flutter_test.dart';
import 'package:tmitra/main.dart';

void main() {
  testWidgets('home dashboard opens the course map', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Quest'), findsOneWidget);
    expect(find.text('Flutter App Builder'), findsOneWidget);

    await tester.tap(find.text('Open course'));
    await tester.pumpAndSettle();

    expect(find.text('Course map'), findsOneWidget);
    expect(
      find.text('Your course map is the next screen to build.'),
      findsOneWidget,
    );
  });
}
