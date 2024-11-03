import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a provider for the current locale
final localeProvider = StateProvider<Locale?>((ref) => null);
