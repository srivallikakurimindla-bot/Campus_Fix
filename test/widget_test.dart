
import 'package:flutter_test/flutter_test.dart';
import 'package:campus_fix/main.dart';

void main() {
  testWidgets('CampusFix home screen loads', (WidgetTester tester) async {
    await tester.pumpWidget(const CampusFixApp());
    expect(find.text('CampusFix'), findsOneWidget);
  });
}