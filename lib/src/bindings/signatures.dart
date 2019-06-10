import "dart:ffi";
import 'types.dart';
import '../ffi/cstring.dart';

typedef HelloGetIntThreeOp = Int32 Function();
typedef HelloGetTextAbcOp = CString Function();
typedef HelloParrotOp = CString Function(CString text, Int32 length);
typedef HelloGetUserOp = CHelloUser Function();
typedef HelloUserFunctionOp = CString Function();
