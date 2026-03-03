import 'package:auth/src/model/user_group_model.dart';
import 'package:flutter/material.dart';
import 'package:locale/l10n/generated/core_localizations.dart' show CoreLocalizations;
import 'package:widgets/widgets.dart';

/// dialog returns true when company delete, false when not,
/// null when cancelled
///
Future<bool?> confirmDeleteUserComp(
  BuildContext context,
  UserGroup? userGroup,
) {
  final localizations = CoreLocalizations.of(context)!;
  List<Widget> actions = [
    Text(localizations.deleteWarning),
    const SizedBox(height: 20),
    OutlinedButton(
      child: Text(localizations.onlyUserDelete),
      onPressed: () {
        Navigator.of(context).pop(false);
      },
    ),
  ];
  if (userGroup == UserGroup.admin) {
    actions.add(const SizedBox(height: 10));
    actions.add(
      OutlinedButton(
        child: Text(localizations.userAndCompanyDelete),
        onPressed: () {
          Navigator.of(context).pop(true);
        },
      ),
    );
  }

  // show the dialog
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: popUp(
          height: 300,
          context: context,
          title: userGroup == UserGroup.admin
              ? localizations.deleteYourselfAndCompany
              : localizations.deleteYourself,
          child: Column(children: actions),
        ),
      );
    },
  );
}
