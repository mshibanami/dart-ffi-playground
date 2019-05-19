import 'dart:ffi';

// hello_user
@struct
class HelloUserPointer extends Pointer<IntPtr> {
  Pointer<Int32> age;
}

@struct
class CHelloUser extends NativeType {
  // const CHelloUser();

  // Pointer<Uint32> age;
}

class HelloUser {
  int age;
}
