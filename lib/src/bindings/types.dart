import 'dart:ffi';

// hello_user
@struct
class CHelloUser extends Pointer<Void> {
  @Int32()
  int age;
}

class HelloUser {
  int age;

  HelloUser(int age) {
    this.age = age;
  }
}
