import 'package:auth/auth.dart';
import 'package:flutter/material.dart';

/// item on the main menu, containing tabitems on a lower level.
class MenuOption {
  final String? key;
  final String? image; // image when not seleced
  final String? selectedImage; // image when selected
  final String title; // a the top of the page
  final String?
      route; // route path required to show this item from other Menuoptions
  final Object? arguments; // optional arguments to used with route
  final List<TabItem>? tabItems; // top/bottom tabs
  final Widget? child; // when no tabs this is single page
  final List<UserGroup>? userGroups;

  MenuOption({
    this.key,
    this.image,
    this.selectedImage,
    required this.title,
    this.route,
    this.arguments,
    this.tabItems,
    this.child,
    this.userGroups, // access to the option
  });

  MenuOption copyWith({
    String? key,
    String? image,
    String? selectedImage,
    String? title,
    String? route,
    Object? arguments,
    List<TabItem>? tabItems,
    Widget? child,
    List<UserGroup>? userGroups,
  }) {
    return MenuOption(
      key: key ?? this.key,
      image: image ?? this.image,
      selectedImage: selectedImage ?? this.selectedImage,
      title: title ?? this.title,
      route: route ?? this.route,
      arguments: arguments ?? this.arguments,
      tabItems: tabItems ?? this.tabItems,
      child: child ?? this.child,
      userGroups: userGroups ?? this.userGroups,
    );
  }

  @override
  String toString() => 'MenuOption name: $title route: $route '
      'arguments: ${arguments.toString()} '
      'child: ${child.toString()} '
      'tabItems# ${tabItems != null ? tabItems!.length : "0"}';
}
