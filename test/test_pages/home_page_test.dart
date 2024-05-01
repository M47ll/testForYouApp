import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:work_test/view/screen/login_view.dart'; // Replace with your main.dart file location

void main() {
  testWidgets('LoginView widget test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(home: LoginView()));

    // Verify if the text "Login" is displayed
    expect(find.text('Login'), findsOneWidget);

    // Verify if the "Enter Username/Email" text field is displayed
    expect(find.byType(TextFormField),
        findsNWidgets(2)); // Assuming two TextFormField widgets

    // Verify if the "Back" text is displayed
    expect(find.text(' Back'), findsOneWidget);

    // Verify if the "Register here" text is displayed
    expect(find.text('Register here'), findsOneWidget);
  });
}
