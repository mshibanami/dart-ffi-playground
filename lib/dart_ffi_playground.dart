library dart_ffi_playground;

import 'dart:convert';
import 'dart:ffi';

import 'package:dart_ffi_playground/src/bindings/types.dart';

import 'src/bindings/bindings.dart';
import 'src/ffi/cstring.dart';

export 'src/dart_ffi_playground.dart';

class Hello {
  int getIntThree() {
    return bindings.hello_get_int_three();
  }

  String getTextAbc() {
    var textC = bindings.hello_get_text_abc();
    var text = CString.fromUtf8(textC);
    // Don't free textC because it's not allocated by Dart
    return text;
  }

  String parrot(String text) {
    var byteLength = Utf8Encoder().convert(text).length;
    var textC = CString.allocate(text);
    var parrottedC = bindings.hello_parrot(textC, byteLength);
    var parrotted = CString.fromUtf8(parrottedC);
    textC.free();
    return parrotted;
  }

  HelloUser getUser() {
    var userC = bindings.hello_get_user();
    userC.age;
    var user = HelloUser(userC);
    return user;
  }
}

class HelloUser {
  int age;
  String givenName;
  String middleName;
  String familyName;
  CString Function() helloUserFunction;

  HelloUser(CHelloUser userC) {
    this.age = userC.age;
    this.givenName = CString.fromUtf8(userC.name.givenName);
    this.middleName = CString.fromUtf8(userC.name.middleName);
    this.familyName = CString.fromUtf8(userC.name.familyName);
    this.helloUserFunction = userC.helloUserFunction.asFunction();
  }
}
