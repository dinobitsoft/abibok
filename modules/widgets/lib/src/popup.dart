import 'package:flutter/material.dart';

import 'dialog_close_button.dart';
import 'utils/screen_size.dart';

Widget popUp({
  Widget? child,
  String title = '',
  double height = 400,
  double? width,
  double padding = 10,
  bool? closeButton = true,
  required BuildContext context,
}) {
  if (width == null) {
    isPhone(context) ? width = 450 : width = 700;
  }
  return Stack(
    clipBehavior: Clip.none,
    children: [
      SizedBox(
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  title,
                  key: const Key('topHeader'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Theme.of(context).colorScheme.surfaceContainerHighest
                      : Theme.of(context).colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(padding: EdgeInsets.all(padding), child: child),
              ),
            ),
          ],
        ),
      ),
      if (closeButton == true)
        const Positioned(top: 15, right: 15, child: DialogCloseButton()),
    ],
  );
}
