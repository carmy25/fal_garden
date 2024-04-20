import 'package:pmm_garden/core/services/auth.service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signin.vm.g.dart';

@riverpod
class SignInScreenVM extends _$SignInScreenVM {
  @override
  FutureOr<void> build() {}

  Future<void> signIn(String username, String password) async {
    final authService = ref.read(authServiceProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
        () async => authService.signIn(username, password));
  }
}
