import 'dart:ffi';
import 'package:dart_ffi_playground/src/bindings/types.dart';

import '../ffi/cstring.dart';
import '../ffi/dylib_utils.dart';
import 'signatures.dart';

class _HelloBindings {
  DynamicLibrary library;

  int Function() hello_get_int_three;
  CString Function() hello_get_text_abc;
  CString Function(CString text, int length) hello_parrot;
  HelloUserPointer Function() hello_get_user;

  _HelloBindings() {
    library = dlopenPlatformSpecific("hello", path: "./lib/hello/build/");

    hello_get_int_three = library
        .lookup<NativeFunction<hello_get_int_three_native_t>>(
            "hello_get_int_three")
        .asFunction();

    hello_get_text_abc = library
        .lookup<NativeFunction<hello_get_text_abc_native_t>>(
            "hello_get_text_abc")
        .asFunction();

    hello_parrot = library
        .lookup<NativeFunction<hello_parrot_native_t>>("hello_parrot")
        .asFunction();

    hello_get_user = library
        .lookup<NativeFunction<hello_get_user_native_t>>("hello_get_user")
        .asFunction();
  }
}

_HelloBindings _cachedBindings;
_HelloBindings get bindings => _cachedBindings ??= _HelloBindings();
