import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation {
  static void pop(
      BuildContext context,
      ) {
    Navigator.of(context).pop();
  }

  static void popWithResult(
      BuildContext context,
      dynamic result,
      ) {
    Navigator.of(context).pop(result);
  }

  static Future<dynamic> push(
      Widget route,
      BuildContext context, {
        bool fullScreenDialog = false,
        bool maintainState = true,
      }) async {
    return await Navigator.of(context).push(
      fullScreenDialog
          ? CupertinoPageRoute(
          fullscreenDialog: fullScreenDialog,
          builder: (context) => route,
          maintainState: maintainState)
          : Platform.isIOS
          ? CupertinoPageRoute(
          builder: (context) => route, maintainState: true)
          : MaterialPageRoute(
          builder: (context) => route, maintainState: true),
    );
  }

  static Future replace(
      Widget route,
      BuildContext context, {
        bool fullScreenDialog = false,
      }) async {
    await Navigator.of(context).pushReplacement(
      fullScreenDialog
          ? CupertinoPageRoute(
        fullscreenDialog: fullScreenDialog,
        builder: (context) => route,
      )
          : Platform.isIOS
          ? CupertinoPageRoute(
        builder: (context) => route,
      )
          : MaterialPageRoute(
        builder: (context) => route,
      ),
    );
  }

  static Future replaceAll(
      Widget route,
      BuildContext context, {
        bool? maintainState = true,
        bool fullScreenDialog = false,
      }) async {
    await Navigator.of(context).pushAndRemoveUntil(
        fullScreenDialog
            ? CupertinoPageRoute(
            fullscreenDialog: fullScreenDialog,
            builder: (context) => route,
            maintainState: maintainState!)
            : Platform.isIOS
            ? CupertinoPageRoute(
          builder: (context) => route,
        )
            : MaterialPageRoute(
            builder: (context) => route, maintainState: maintainState!),
            (route) => false);
  }

  static Future replaceTillFirst(
      Widget route,
      BuildContext context, {
        bool fullScreenDialog = false,
      }) async {
    await Navigator.of(context).pushAndRemoveUntil(
        fullScreenDialog
            ? CupertinoPageRoute(
          fullscreenDialog: fullScreenDialog,
          builder: (context) => route,
        )
            : Platform.isIOS
            ? CupertinoPageRoute(
          builder: (context) => route,
        )
            : MaterialPageRoute(
          builder: (context) => route,
        ),
            (route) => route.isFirst);
  }

  static void popAll(
      BuildContext context,
      ) async {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}
