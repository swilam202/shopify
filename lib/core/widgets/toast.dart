import 'package:fluttertoast/fluttertoast.dart';

import '../styles/style colors.dart';

showToast({required String msg,required bool isGreen}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: isGreen ? StyleColor.greenColor: StyleColor.redColor,
    textColor: StyleColor.whiteColor,
    fontSize: 16.0,
  );
}