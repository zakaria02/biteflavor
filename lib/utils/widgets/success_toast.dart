import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class SuccessToast {
  static void showToast({required String message}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      toastification.show(
        style: ToastificationStyle.simple,
        title: Text(message),
        description: const Text(""),
        alignment: Alignment.bottomCenter,
        autoCloseDuration: const Duration(seconds: 3),
        backgroundColor: const Color(0xFF32BC32),
        foregroundColor: const Color(0xffffffff),
        boxShadow: lowModeShadow,
        closeOnClick: false,
        dragToClose: true,
      );
    });
  }
}
