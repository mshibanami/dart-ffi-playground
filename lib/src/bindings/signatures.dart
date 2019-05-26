import "dart:ffi";
import 'types.dart';
import '../ffi/cstring.dart';

typedef hello_get_int_three_native_t = Int32 Function();

typedef hello_get_text_abc_native_t = CString Function();

typedef hello_parrot_native_t = CString Function(CString text, Int32 length);

typedef hello_get_user_native_t = CHelloUser Function();
