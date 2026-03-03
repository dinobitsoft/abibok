import 'package:flutter/material.dart';

/// menu items at the second level.
/// at the top for web, at the bottom for mobile
class TabItem {
  final Icon icon; // bottom of screen tab icon
  final String label; // label of tab top/bottom
  final Widget form; // form to be displayed in a tab selection
  final String?
      floatButtonRoute; // action bottom routing per tab List at the top, string single at the bottom
  final dynamic floatButtonArgs; // argument for button route.
  final Widget? floatButtonForm; // for dialogs which use navigator internally
  TabItem({
    required this.icon,
    required this.label,
    required this.form,
    this.floatButtonRoute,
    this.floatButtonArgs,
    this.floatButtonForm,
  });
}
