import 'package:flutter/material.dart';

SnackBar snackBar(BuildContext context, Color colors, String message,
    {int? seconds}) {
//  var screenWidth = MediaQuery.of(context).size.width;
  return SnackBar(
//    behavior: SnackBarBehavior.floating,
//    width: screenWidth < 800 ? screenWidth * 0.8 : 500,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    content: Text(message),
    duration: seconds == null
        ? Duration(milliseconds: colors == Colors.red ? 5000 : 2000)
        : Duration(seconds: seconds),
    backgroundColor: colors,
    action: SnackBarAction(
      key: const Key('dismiss'),
      label: 'Dismiss',
      textColor: Colors.yellow,
      onPressed: () {},
    ),
  );
}
