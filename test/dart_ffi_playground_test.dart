import 'package:dart_ffi_playground/dart_ffi_playground.dart';
import 'package:test/test.dart';

void main() {
  Hello hello;

  setUp(() {
    hello = Hello();
  });
  test('call functions', () {
    expect(hello.getIntThree(), 3);
    expect(hello.getTextAbc(), "abc");
    expect(hello.parrot("Dunder Mifflin"), "Dunder Mifflin");
    expect(hello.parrot("あいうえお"), "あいうえお");
    expect(hello.parrot("👪"), "👪");

    var user = hello.getUser();
    expect(user.age, 30);
    expect(user.givenName, "Manabu");
    expect(user.middleName, null);
    expect(user.familyName, "Nakazawa");
  });
}
