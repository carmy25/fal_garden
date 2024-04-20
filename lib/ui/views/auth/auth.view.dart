import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pmm_garden/core/services/auth.service.dart';
import 'package:pmm_garden/ui/views/auth/sigin.view.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateChangesProvider);
    return switch (authState) {
      AsyncData(:final value) =>
        value != null ? const Text('AccountScreen') : const SignInScreen(),
      AsyncError(:final error) => Text('error: $error'),
      _ => const Text('Loading...'),
    };
  }
}
