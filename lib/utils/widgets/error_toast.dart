import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ErrorToast {
  static void showToast({required String message}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      toastification.show(
        style: ToastificationStyle.flatColored,
        title: const Text("Error"),
        description: Text(message),
        alignment: Alignment.bottomCenter,
        autoCloseDuration: const Duration(seconds: 5),
        backgroundColor: const Color(0xffff3a30),
        foregroundColor: const Color(0xffffffff),
        boxShadow: lowModeShadow,
        closeOnClick: false,
        dragToClose: true,
        showProgressBar: false,
        showIcon: false,
        closeButtonShowType: CloseButtonShowType.none,
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      );
    });
  }
}
