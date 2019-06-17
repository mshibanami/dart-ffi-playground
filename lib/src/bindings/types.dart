import 'dart:ffi' as ffi;
import 'package:dart_ffi_playground/src/bindings/signatures.dart';

import '../ffi/cstring.dart';

// hello_user
@ffi.struct
class CHelloUser extends ffi.Pointer<ffi.Void> {
  @ffi.Int32()
  int age;

  @ffi.Pointer()
  CHelloUserName name;

  @ffi.Struct()
  CHelloBirthday birthday;

  @ffi.Pointer()
  ffi.Pointer<ffi.NativeFunction<HelloUserFunctionOp>> helloUserFunction;
}

// hello_user_name
@ffi.struct
class CHelloUserName extends ffi.Pointer<ffi.Void> {
  @ffi.Pointer()
  CString givenName;

  @ffi.Pointer()
  CString middleName;

  @ffi.Pointer()
  CString familyName;
}

// hello_birthday
@ffi.struct
class CHelloBirthday extends ffi.Pointer<ffi.Void> {
  @ffi.Int32()
  int month;

  @ffi.Int32()
  int day;
}
