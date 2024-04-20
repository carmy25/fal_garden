import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:pmm_garden/core/services/auth.service.dart';
import 'package:pmm_garden/graphql/queries/__generated__/queries.graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql.service.g.dart';

class GraphQLService {
  final Ref ref;
  late GraphQLClient _client;
  late ValueNotifier<GraphQLClient> _clientNotifier;

  bool _renewingToken = false;

  GraphQLClient get client => _client;

  ValueNotifier<GraphQLClient> get clientNotifier => _clientNotifier;

  GraphQLService({required this.ref}) {
    final authLink = AuthLink(getToken: _getToken);
    final httpLink = HttpLink("http://localhost:8000/graphql");

    /// The order of the links in the array matters!
    final link = Link.from([authLink, httpLink]);

    _client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
      //
      // You have two other caching options.
      // But for my example I won't be using caching.
      //
      // cache: GraphQLCache(store: HiveStore()),
      // cache: GraphQLCache(store: InMemoryStore()),
      //
      defaultPolicies:
          DefaultPolicies(query: Policies(fetch: FetchPolicy.networkOnly)),
    );

    _clientNotifier = ValueNotifier(_client);
  }

  Future<String?> _getToken() async {
    if (_renewingToken) return null;
    final authService = ref.read(authServiceProvider);
    final accessToken = authService.currentUser?.accessToken;
    final refreshToken = authService.currentUser?.refreshToken;
    debugPrint('_getToken: $accessToken');

    if (accessToken == null || refreshToken == null) return null;

    if (Jwt.isExpired(accessToken)) {
      final renewedToken = await _renewToken(refreshToken);

      if (renewedToken == null) return null;
      authService.updateToken(renewedToken);

      return 'JWT $renewedToken';
    }
    return 'JWT $accessToken';
  }

  Future<String?> _renewToken(String refreshToken) async {
    try {
      _renewingToken = true;

      final result =
          await _client.mutate$RefreshToken(Options$Mutation$RefreshToken(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Mutation$RefreshToken(
          token: refreshToken,
        ),
      ));

      final resp = result.parsedData?.auth!.refreshToken;

      if (resp is Mutation$RefreshToken$auth$refreshToken) {
        return resp.token;
      } else {
        if (result.exception != null &&
            result.exception!.graphqlErrors.isNotEmpty) {
          debugPrint('Error on refreshToken');
        }
      }
    } catch (e) {
      rethrow;
    } finally {
      _renewingToken = false;
    }

    return null;
  }
}

@riverpod
GraphQLService graphQLService(GraphQLServiceRef ref) {
  return GraphQLService(ref: ref);
}
