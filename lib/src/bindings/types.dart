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

  @ffi.Pointer()
  ffi.Pointer<ffi.NativeFunction<HelloUserFunctionOp>> helloUserFunction;
}

@ffi.struct
class CHelloUserName extends ffi.Pointer<ffi.Void> {
  @ffi.Pointer()
  CString givenName;

  @ffi.Pointer()
  CString middleName;

  @ffi.Pointer()
  CString familyName;
}
