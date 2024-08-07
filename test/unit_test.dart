import 'package:flutter_test/flutter_test.dart';
import 'package:widgetassignment/auth_service.dart';

void main() {
  test('createUserwithEmailAndPassword creates a new user', () async {
    final authService = AuthService();

    const email = 'mechtech@gmail.com';
    const password = 'password123456';

    final user =
        await authService.createUserWithEmailAndPassword(email, password);

    expect(user, isNotNull);
    expect(user?.email, email);
  });
}
