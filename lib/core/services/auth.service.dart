import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pmm_garden/core/models/user.model.dart';
import 'package:pmm_garden/core/services/graphql.service.dart';
import 'package:pmm_garden/core/utils/in_memory_store.dart';
import 'package:pmm_garden/graphql/queries/__generated__/queries.graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.service.g.dart';

class AuthService {
  final Ref ref;
  final _authState = InMemoryStore<AppUser?>(null);

  AppUser? get currentUser => _authState.value;
  Stream<AppUser?> authStateChanges() => _authState.stream;
  AuthService({required this.ref});

  Future<void> signIn(String username, String password) async {
    final graphqlService = ref.read(graphQLServiceProvider);
    final resp = await graphqlService.client.mutate$Login(
        Options$Mutation$Login(
            variables: Variables$Mutation$Login(
                username: username, password: password)));
    if (resp.hasException) {
      throw resp.exception!;
    }
    final token = resp.data?['auth']['tokenAuth']['token'];
    if (token == null) {
      debugPrint('Error occured on signin');
      throw Exception('Невірні дані з серверу.');
    }
    _authState.value = AppUser(
        id: 0,
        accessToken: token,
        refreshToken: 'refreshToken',
        username: 'usernaME');
    /*final testresp = await graphqlService.client.query$Hello();
    debugPrint('D: $testresp');*/
  }

  void updateToken(String token) {
    _authState.value = currentUser?.copyWith(accessToken: token);
  }

  void dispose() => _authState.close();
}

@riverpod
AuthService authService(AuthServiceRef ref) {
  return AuthService(ref: ref);
}

@riverpod
Stream<AppUser?> authStateChanges(AuthStateChangesRef ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges();
}
