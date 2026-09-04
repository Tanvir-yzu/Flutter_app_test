import 'package:flutter_test/flutter_test.dart';

import 'package:test02/main.dart';

void main() {
  testWidgets('renders the UserGuard home page', (tester) async {
    await tester.pumpWidget(const UserGuardApp());

    expect(find.text('UserGuard Home Page'), findsOneWidget);
    expect(find.text('HelloGuard!'), findsOneWidget);
  });
}
