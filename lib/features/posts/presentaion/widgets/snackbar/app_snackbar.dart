part of '../../../../../utils/import/app_import.dart';

class AppSnackBar {
  // ✅
  static void snackBarSuccess(BuildContext context, {required String msg}) {
    showTopSnackBar(
      context,
      CustomSnackBar.success(
        message: msg,
        backgroundColor: Colors.green,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      displayDuration: const Duration(seconds: 1),
    );
  }

  // * ❌
  static void snackBarError(BuildContext context, {required String msg}) {
    showTopSnackBar(
      context,
      CustomSnackBar.error(
        message: msg,
        backgroundColor: Colors.red,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      displayDuration: const Duration(seconds: 1),
    );
  }
}
