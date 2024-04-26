// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$Login {
  factory Variables$Mutation$Login({
    required String username,
    required String password,
  }) =>
      Variables$Mutation$Login._({
        r'username': username,
        r'password': password,
      });

  Variables$Mutation$Login._(this._$data);

  factory Variables$Mutation$Login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$Login._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$Login<Variables$Mutation$Login> get copyWith =>
      CopyWith$Variables$Mutation$Login(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Login) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$password = password;
    return Object.hashAll([
      l$username,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Login<TRes> {
  factory CopyWith$Variables$Mutation$Login(
    Variables$Mutation$Login instance,
    TRes Function(Variables$Mutation$Login) then,
  ) = _CopyWithImpl$Variables$Mutation$Login;

  factory CopyWith$Variables$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Login;

  TRes call({
    String? username,
    String? password,
  });
}

class _CopyWithImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithImpl$Variables$Mutation$Login(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Login _instance;

  final TRes Function(Variables$Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Mutation$Login._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Login<TRes>
    implements CopyWith$Variables$Mutation$Login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Login(this._res);

  TRes _res;

  call({
    String? username,
    String? password,
  }) =>
      _res;
}

class Mutation$Login {
  Mutation$Login({
    this.auth,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Login.fromJson(Map<String, dynamic> json) {
    final l$auth = json['auth'];
    final l$$__typename = json['__typename'];
    return Mutation$Login(
      auth: l$auth == null
          ? null
          : Mutation$Login$auth.fromJson((l$auth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Login$auth? auth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth = auth;
    _resultData['auth'] = l$auth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth = auth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth = auth;
    final lOther$auth = other.auth;
    if (l$auth != lOther$auth) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Login on Mutation$Login {
  CopyWith$Mutation$Login<Mutation$Login> get copyWith =>
      CopyWith$Mutation$Login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login<TRes> {
  factory CopyWith$Mutation$Login(
    Mutation$Login instance,
    TRes Function(Mutation$Login) then,
  ) = _CopyWithImpl$Mutation$Login;

  factory CopyWith$Mutation$Login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login;

  TRes call({
    Mutation$Login$auth? auth,
    String? $__typename,
  });
  CopyWith$Mutation$Login$auth<TRes> get auth;
}

class _CopyWithImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithImpl$Mutation$Login(
    this._instance,
    this._then,
  );

  final Mutation$Login _instance;

  final TRes Function(Mutation$Login) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login(
        auth: auth == _undefined
            ? _instance.auth
            : (auth as Mutation$Login$auth?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Login$auth<TRes> get auth {
    final local$auth = _instance.auth;
    return local$auth == null
        ? CopyWith$Mutation$Login$auth.stub(_then(_instance))
        : CopyWith$Mutation$Login$auth(local$auth, (e) => call(auth: e));
  }
}

class _CopyWithStubImpl$Mutation$Login<TRes>
    implements CopyWith$Mutation$Login<TRes> {
  _CopyWithStubImpl$Mutation$Login(this._res);

  TRes _res;

  call({
    Mutation$Login$auth? auth,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Login$auth<TRes> get auth =>
      CopyWith$Mutation$Login$auth.stub(_res);
}

const documentNodeMutationLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'tokenAuth'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'username'),
                value: VariableNode(name: NameNode(value: 'username')),
              ),
              ArgumentNode(
                name: NameNode(value: 'password'),
                value: VariableNode(name: NameNode(value: 'password')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'refreshExpiresIn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'payload'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$Login _parserFn$Mutation$Login(Map<String, dynamic> data) =>
    Mutation$Login.fromJson(data);
typedef OnMutationCompleted$Mutation$Login = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Login?,
);

class Options$Mutation$Login extends graphql.MutationOptions<Mutation$Login> {
  Options$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Login
    extends graphql.WatchQueryOptions<Mutation$Login> {
  WatchOptions$Mutation$Login({
    String? operationName,
    required Variables$Mutation$Login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Login,
        );
}

extension ClientExtension$Mutation$Login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Login>> mutate$Login(
          Options$Mutation$Login options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Login> watchMutation$Login(
          WatchOptions$Mutation$Login options) =>
      this.watchMutation(options);
}

class Mutation$Login$HookResult {
  Mutation$Login$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$Login runMutation;

  final graphql.QueryResult<Mutation$Login> result;
}

Mutation$Login$HookResult useMutation$Login(
    [WidgetOptions$Mutation$Login? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptions$Mutation$Login());
  return Mutation$Login$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$Login> useWatchMutation$Login(
        WatchOptions$Mutation$Login options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$Login
    extends graphql.MutationOptions<Mutation$Login> {
  WidgetOptions$Mutation$Login({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Login? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Login? onCompleted,
    graphql.OnMutationUpdate<Mutation$Login>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$Login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationLogin,
          parserFn: _parserFn$Mutation$Login,
        );

  final OnMutationCompleted$Mutation$Login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$Login = graphql.MultiSourceResult<Mutation$Login>
    Function(
  Variables$Mutation$Login, {
  Object? optimisticResult,
  Mutation$Login? typedOptimisticResult,
});
typedef Builder$Mutation$Login = widgets.Widget Function(
  RunMutation$Mutation$Login,
  graphql.QueryResult<Mutation$Login>?,
);

class Mutation$Login$Widget extends graphql_flutter.Mutation<Mutation$Login> {
  Mutation$Login$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$Login? options,
    required Builder$Mutation$Login builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$Login(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$Login$auth {
  Mutation$Login$auth({
    this.tokenAuth,
    this.$__typename = 'AuthMutation',
  });

  factory Mutation$Login$auth.fromJson(Map<String, dynamic> json) {
    final l$tokenAuth = json['tokenAuth'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$auth(
      tokenAuth: l$tokenAuth == null
          ? null
          : Mutation$Login$auth$tokenAuth.fromJson(
              (l$tokenAuth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$Login$auth$tokenAuth? tokenAuth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tokenAuth = tokenAuth;
    _resultData['tokenAuth'] = l$tokenAuth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tokenAuth = tokenAuth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tokenAuth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Login$auth) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tokenAuth = tokenAuth;
    final lOther$tokenAuth = other.tokenAuth;
    if (l$tokenAuth != lOther$tokenAuth) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Login$auth on Mutation$Login$auth {
  CopyWith$Mutation$Login$auth<Mutation$Login$auth> get copyWith =>
      CopyWith$Mutation$Login$auth(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Login$auth<TRes> {
  factory CopyWith$Mutation$Login$auth(
    Mutation$Login$auth instance,
    TRes Function(Mutation$Login$auth) then,
  ) = _CopyWithImpl$Mutation$Login$auth;

  factory CopyWith$Mutation$Login$auth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$auth;

  TRes call({
    Mutation$Login$auth$tokenAuth? tokenAuth,
    String? $__typename,
  });
  CopyWith$Mutation$Login$auth$tokenAuth<TRes> get tokenAuth;
}

class _CopyWithImpl$Mutation$Login$auth<TRes>
    implements CopyWith$Mutation$Login$auth<TRes> {
  _CopyWithImpl$Mutation$Login$auth(
    this._instance,
    this._then,
  );

  final Mutation$Login$auth _instance;

  final TRes Function(Mutation$Login$auth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tokenAuth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$auth(
        tokenAuth: tokenAuth == _undefined
            ? _instance.tokenAuth
            : (tokenAuth as Mutation$Login$auth$tokenAuth?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$Login$auth$tokenAuth<TRes> get tokenAuth {
    final local$tokenAuth = _instance.tokenAuth;
    return local$tokenAuth == null
        ? CopyWith$Mutation$Login$auth$tokenAuth.stub(_then(_instance))
        : CopyWith$Mutation$Login$auth$tokenAuth(
            local$tokenAuth, (e) => call(tokenAuth: e));
  }
}

class _CopyWithStubImpl$Mutation$Login$auth<TRes>
    implements CopyWith$Mutation$Login$auth<TRes> {
  _CopyWithStubImpl$Mutation$Login$auth(this._res);

  TRes _res;

  call({
    Mutation$Login$auth$tokenAuth? tokenAuth,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$Login$auth$tokenAuth<TRes> get tokenAuth =>
      CopyWith$Mutation$Login$auth$tokenAuth.stub(_res);
}

class Mutation$Login$auth$tokenAuth {
  Mutation$Login$auth$tokenAuth({
    required this.refreshExpiresIn,
    required this.token,
    required this.payload,
    this.$__typename = 'ObtainJSONWebToken',
  });

  factory Mutation$Login$auth$tokenAuth.fromJson(Map<String, dynamic> json) {
    final l$refreshExpiresIn = json['refreshExpiresIn'];
    final l$token = json['token'];
    final l$payload = json['payload'];
    final l$$__typename = json['__typename'];
    return Mutation$Login$auth$tokenAuth(
      refreshExpiresIn: (l$refreshExpiresIn as int),
      token: (l$token as String),
      payload: (l$payload as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int refreshExpiresIn;

  final String token;

  final String payload;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshExpiresIn = refreshExpiresIn;
    _resultData['refreshExpiresIn'] = l$refreshExpiresIn;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$payload = payload;
    _resultData['payload'] = l$payload;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshExpiresIn = refreshExpiresIn;
    final l$token = token;
    final l$payload = payload;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshExpiresIn,
      l$token,
      l$payload,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Login$auth$tokenAuth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshExpiresIn = refreshExpiresIn;
    final lOther$refreshExpiresIn = other.refreshExpiresIn;
    if (l$refreshExpiresIn != lOther$refreshExpiresIn) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$payload = payload;
    final lOther$payload = other.payload;
    if (l$payload != lOther$payload) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$Login$auth$tokenAuth
    on Mutation$Login$auth$tokenAuth {
  CopyWith$Mutation$Login$auth$tokenAuth<Mutation$Login$auth$tokenAuth>
      get copyWith => CopyWith$Mutation$Login$auth$tokenAuth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$Login$auth$tokenAuth<TRes> {
  factory CopyWith$Mutation$Login$auth$tokenAuth(
    Mutation$Login$auth$tokenAuth instance,
    TRes Function(Mutation$Login$auth$tokenAuth) then,
  ) = _CopyWithImpl$Mutation$Login$auth$tokenAuth;

  factory CopyWith$Mutation$Login$auth$tokenAuth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Login$auth$tokenAuth;

  TRes call({
    int? refreshExpiresIn,
    String? token,
    String? payload,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$Login$auth$tokenAuth<TRes>
    implements CopyWith$Mutation$Login$auth$tokenAuth<TRes> {
  _CopyWithImpl$Mutation$Login$auth$tokenAuth(
    this._instance,
    this._then,
  );

  final Mutation$Login$auth$tokenAuth _instance;

  final TRes Function(Mutation$Login$auth$tokenAuth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshExpiresIn = _undefined,
    Object? token = _undefined,
    Object? payload = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Login$auth$tokenAuth(
        refreshExpiresIn:
            refreshExpiresIn == _undefined || refreshExpiresIn == null
                ? _instance.refreshExpiresIn
                : (refreshExpiresIn as int),
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        payload: payload == _undefined || payload == null
            ? _instance.payload
            : (payload as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$Login$auth$tokenAuth<TRes>
    implements CopyWith$Mutation$Login$auth$tokenAuth<TRes> {
  _CopyWithStubImpl$Mutation$Login$auth$tokenAuth(this._res);

  TRes _res;

  call({
    int? refreshExpiresIn,
    String? token,
    String? payload,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RefreshToken {
  factory Variables$Mutation$RefreshToken({required String token}) =>
      Variables$Mutation$RefreshToken._({
        r'token': token,
      });

  Variables$Mutation$RefreshToken._(this._$data);

  factory Variables$Mutation$RefreshToken.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables$Mutation$RefreshToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Variables$Mutation$RefreshToken<Variables$Mutation$RefreshToken>
      get copyWith => CopyWith$Variables$Mutation$RefreshToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RefreshToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    return Object.hashAll([l$token]);
  }
}

abstract class CopyWith$Variables$Mutation$RefreshToken<TRes> {
  factory CopyWith$Variables$Mutation$RefreshToken(
    Variables$Mutation$RefreshToken instance,
    TRes Function(Variables$Mutation$RefreshToken) then,
  ) = _CopyWithImpl$Variables$Mutation$RefreshToken;

  factory CopyWith$Variables$Mutation$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RefreshToken;

  TRes call({String? token});
}

class _CopyWithImpl$Variables$Mutation$RefreshToken<TRes>
    implements CopyWith$Variables$Mutation$RefreshToken<TRes> {
  _CopyWithImpl$Variables$Mutation$RefreshToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RefreshToken _instance;

  final TRes Function(Variables$Mutation$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? token = _undefined}) =>
      _then(Variables$Mutation$RefreshToken._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RefreshToken<TRes>
    implements CopyWith$Variables$Mutation$RefreshToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RefreshToken(this._res);

  TRes _res;

  call({String? token}) => _res;
}

class Mutation$RefreshToken {
  Mutation$RefreshToken({
    this.auth,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RefreshToken.fromJson(Map<String, dynamic> json) {
    final l$auth = json['auth'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken(
      auth: l$auth == null
          ? null
          : Mutation$RefreshToken$auth.fromJson(
              (l$auth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RefreshToken$auth? auth;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$auth = auth;
    _resultData['auth'] = l$auth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$auth = auth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$auth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$auth = auth;
    final lOther$auth = other.auth;
    if (l$auth != lOther$auth) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RefreshToken on Mutation$RefreshToken {
  CopyWith$Mutation$RefreshToken<Mutation$RefreshToken> get copyWith =>
      CopyWith$Mutation$RefreshToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RefreshToken<TRes> {
  factory CopyWith$Mutation$RefreshToken(
    Mutation$RefreshToken instance,
    TRes Function(Mutation$RefreshToken) then,
  ) = _CopyWithImpl$Mutation$RefreshToken;

  factory CopyWith$Mutation$RefreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken;

  TRes call({
    Mutation$RefreshToken$auth? auth,
    String? $__typename,
  });
  CopyWith$Mutation$RefreshToken$auth<TRes> get auth;
}

class _CopyWithImpl$Mutation$RefreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken<TRes> {
  _CopyWithImpl$Mutation$RefreshToken(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken _instance;

  final TRes Function(Mutation$RefreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? auth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken(
        auth: auth == _undefined
            ? _instance.auth
            : (auth as Mutation$RefreshToken$auth?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RefreshToken$auth<TRes> get auth {
    final local$auth = _instance.auth;
    return local$auth == null
        ? CopyWith$Mutation$RefreshToken$auth.stub(_then(_instance))
        : CopyWith$Mutation$RefreshToken$auth(local$auth, (e) => call(auth: e));
  }
}

class _CopyWithStubImpl$Mutation$RefreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken(this._res);

  TRes _res;

  call({
    Mutation$RefreshToken$auth? auth,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RefreshToken$auth<TRes> get auth =>
      CopyWith$Mutation$RefreshToken$auth.stub(_res);
}

const documentNodeMutationRefreshToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RefreshToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'auth'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'refreshToken'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'token'),
                value: VariableNode(name: NameNode(value: 'token')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'refreshExpiresIn'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'token'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$RefreshToken _parserFn$Mutation$RefreshToken(
        Map<String, dynamic> data) =>
    Mutation$RefreshToken.fromJson(data);
typedef OnMutationCompleted$Mutation$RefreshToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RefreshToken?,
);

class Options$Mutation$RefreshToken
    extends graphql.MutationOptions<Mutation$RefreshToken> {
  Options$Mutation$RefreshToken({
    String? operationName,
    required Variables$Mutation$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RefreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$RefreshToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$RefreshToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRefreshToken,
          parserFn: _parserFn$Mutation$RefreshToken,
        );

  final OnMutationCompleted$Mutation$RefreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RefreshToken
    extends graphql.WatchQueryOptions<Mutation$RefreshToken> {
  WatchOptions$Mutation$RefreshToken({
    String? operationName,
    required Variables$Mutation$RefreshToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationRefreshToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RefreshToken,
        );
}

extension ClientExtension$Mutation$RefreshToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RefreshToken>> mutate$RefreshToken(
          Options$Mutation$RefreshToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RefreshToken> watchMutation$RefreshToken(
          WatchOptions$Mutation$RefreshToken options) =>
      this.watchMutation(options);
}

class Mutation$RefreshToken$HookResult {
  Mutation$RefreshToken$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$RefreshToken runMutation;

  final graphql.QueryResult<Mutation$RefreshToken> result;
}

Mutation$RefreshToken$HookResult useMutation$RefreshToken(
    [WidgetOptions$Mutation$RefreshToken? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RefreshToken());
  return Mutation$RefreshToken$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RefreshToken> useWatchMutation$RefreshToken(
        WatchOptions$Mutation$RefreshToken options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$RefreshToken
    extends graphql.MutationOptions<Mutation$RefreshToken> {
  WidgetOptions$Mutation$RefreshToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RefreshToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RefreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$RefreshToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$RefreshToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRefreshToken,
          parserFn: _parserFn$Mutation$RefreshToken,
        );

  final OnMutationCompleted$Mutation$RefreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$RefreshToken
    = graphql.MultiSourceResult<Mutation$RefreshToken> Function(
  Variables$Mutation$RefreshToken, {
  Object? optimisticResult,
  Mutation$RefreshToken? typedOptimisticResult,
});
typedef Builder$Mutation$RefreshToken = widgets.Widget Function(
  RunMutation$Mutation$RefreshToken,
  graphql.QueryResult<Mutation$RefreshToken>?,
);

class Mutation$RefreshToken$Widget
    extends graphql_flutter.Mutation<Mutation$RefreshToken> {
  Mutation$RefreshToken$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$RefreshToken? options,
    required Builder$Mutation$RefreshToken builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$RefreshToken(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$RefreshToken$auth {
  Mutation$RefreshToken$auth({
    this.refreshToken,
    this.$__typename = 'AuthMutation',
  });

  factory Mutation$RefreshToken$auth.fromJson(Map<String, dynamic> json) {
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken$auth(
      refreshToken: l$refreshToken == null
          ? null
          : Mutation$RefreshToken$auth$refreshToken.fromJson(
              (l$refreshToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RefreshToken$auth$refreshToken? refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken$auth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RefreshToken$auth
    on Mutation$RefreshToken$auth {
  CopyWith$Mutation$RefreshToken$auth<Mutation$RefreshToken$auth>
      get copyWith => CopyWith$Mutation$RefreshToken$auth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RefreshToken$auth<TRes> {
  factory CopyWith$Mutation$RefreshToken$auth(
    Mutation$RefreshToken$auth instance,
    TRes Function(Mutation$RefreshToken$auth) then,
  ) = _CopyWithImpl$Mutation$RefreshToken$auth;

  factory CopyWith$Mutation$RefreshToken$auth.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken$auth;

  TRes call({
    Mutation$RefreshToken$auth$refreshToken? refreshToken,
    String? $__typename,
  });
  CopyWith$Mutation$RefreshToken$auth$refreshToken<TRes> get refreshToken;
}

class _CopyWithImpl$Mutation$RefreshToken$auth<TRes>
    implements CopyWith$Mutation$RefreshToken$auth<TRes> {
  _CopyWithImpl$Mutation$RefreshToken$auth(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken$auth _instance;

  final TRes Function(Mutation$RefreshToken$auth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken$auth(
        refreshToken: refreshToken == _undefined
            ? _instance.refreshToken
            : (refreshToken as Mutation$RefreshToken$auth$refreshToken?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RefreshToken$auth$refreshToken<TRes> get refreshToken {
    final local$refreshToken = _instance.refreshToken;
    return local$refreshToken == null
        ? CopyWith$Mutation$RefreshToken$auth$refreshToken.stub(
            _then(_instance))
        : CopyWith$Mutation$RefreshToken$auth$refreshToken(
            local$refreshToken, (e) => call(refreshToken: e));
  }
}

class _CopyWithStubImpl$Mutation$RefreshToken$auth<TRes>
    implements CopyWith$Mutation$RefreshToken$auth<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken$auth(this._res);

  TRes _res;

  call({
    Mutation$RefreshToken$auth$refreshToken? refreshToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RefreshToken$auth$refreshToken<TRes> get refreshToken =>
      CopyWith$Mutation$RefreshToken$auth$refreshToken.stub(_res);
}

class Mutation$RefreshToken$auth$refreshToken {
  Mutation$RefreshToken$auth$refreshToken({
    required this.refreshExpiresIn,
    required this.token,
    this.$__typename = 'Refresh',
  });

  factory Mutation$RefreshToken$auth$refreshToken.fromJson(
      Map<String, dynamic> json) {
    final l$refreshExpiresIn = json['refreshExpiresIn'];
    final l$token = json['token'];
    final l$$__typename = json['__typename'];
    return Mutation$RefreshToken$auth$refreshToken(
      refreshExpiresIn: (l$refreshExpiresIn as int),
      token: (l$token as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int refreshExpiresIn;

  final String token;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$refreshExpiresIn = refreshExpiresIn;
    _resultData['refreshExpiresIn'] = l$refreshExpiresIn;
    final l$token = token;
    _resultData['token'] = l$token;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$refreshExpiresIn = refreshExpiresIn;
    final l$token = token;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$refreshExpiresIn,
      l$token,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RefreshToken$auth$refreshToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$refreshExpiresIn = refreshExpiresIn;
    final lOther$refreshExpiresIn = other.refreshExpiresIn;
    if (l$refreshExpiresIn != lOther$refreshExpiresIn) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$RefreshToken$auth$refreshToken
    on Mutation$RefreshToken$auth$refreshToken {
  CopyWith$Mutation$RefreshToken$auth$refreshToken<
          Mutation$RefreshToken$auth$refreshToken>
      get copyWith => CopyWith$Mutation$RefreshToken$auth$refreshToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RefreshToken$auth$refreshToken<TRes> {
  factory CopyWith$Mutation$RefreshToken$auth$refreshToken(
    Mutation$RefreshToken$auth$refreshToken instance,
    TRes Function(Mutation$RefreshToken$auth$refreshToken) then,
  ) = _CopyWithImpl$Mutation$RefreshToken$auth$refreshToken;

  factory CopyWith$Mutation$RefreshToken$auth$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RefreshToken$auth$refreshToken;

  TRes call({
    int? refreshExpiresIn,
    String? token,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RefreshToken$auth$refreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken$auth$refreshToken<TRes> {
  _CopyWithImpl$Mutation$RefreshToken$auth$refreshToken(
    this._instance,
    this._then,
  );

  final Mutation$RefreshToken$auth$refreshToken _instance;

  final TRes Function(Mutation$RefreshToken$auth$refreshToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? refreshExpiresIn = _undefined,
    Object? token = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RefreshToken$auth$refreshToken(
        refreshExpiresIn:
            refreshExpiresIn == _undefined || refreshExpiresIn == null
                ? _instance.refreshExpiresIn
                : (refreshExpiresIn as int),
        token: token == _undefined || token == null
            ? _instance.token
            : (token as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RefreshToken$auth$refreshToken<TRes>
    implements CopyWith$Mutation$RefreshToken$auth$refreshToken<TRes> {
  _CopyWithStubImpl$Mutation$RefreshToken$auth$refreshToken(this._res);

  TRes _res;

  call({
    int? refreshExpiresIn,
    String? token,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllDocuments {
  Query$AllDocuments({
    this.documents,
    this.$__typename = 'Query',
  });

  factory Query$AllDocuments.fromJson(Map<String, dynamic> json) {
    final l$documents = json['documents'];
    final l$$__typename = json['__typename'];
    return Query$AllDocuments(
      documents: l$documents == null
          ? null
          : Query$AllDocuments$documents.fromJson(
              (l$documents as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllDocuments$documents? documents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$documents = documents;
    _resultData['documents'] = l$documents?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$documents = documents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$documents,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllDocuments) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (l$documents != lOther$documents) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllDocuments on Query$AllDocuments {
  CopyWith$Query$AllDocuments<Query$AllDocuments> get copyWith =>
      CopyWith$Query$AllDocuments(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllDocuments<TRes> {
  factory CopyWith$Query$AllDocuments(
    Query$AllDocuments instance,
    TRes Function(Query$AllDocuments) then,
  ) = _CopyWithImpl$Query$AllDocuments;

  factory CopyWith$Query$AllDocuments.stub(TRes res) =
      _CopyWithStubImpl$Query$AllDocuments;

  TRes call({
    Query$AllDocuments$documents? documents,
    String? $__typename,
  });
  CopyWith$Query$AllDocuments$documents<TRes> get documents;
}

class _CopyWithImpl$Query$AllDocuments<TRes>
    implements CopyWith$Query$AllDocuments<TRes> {
  _CopyWithImpl$Query$AllDocuments(
    this._instance,
    this._then,
  );

  final Query$AllDocuments _instance;

  final TRes Function(Query$AllDocuments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? documents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllDocuments(
        documents: documents == _undefined
            ? _instance.documents
            : (documents as Query$AllDocuments$documents?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllDocuments$documents<TRes> get documents {
    final local$documents = _instance.documents;
    return local$documents == null
        ? CopyWith$Query$AllDocuments$documents.stub(_then(_instance))
        : CopyWith$Query$AllDocuments$documents(
            local$documents, (e) => call(documents: e));
  }
}

class _CopyWithStubImpl$Query$AllDocuments<TRes>
    implements CopyWith$Query$AllDocuments<TRes> {
  _CopyWithStubImpl$Query$AllDocuments(this._res);

  TRes _res;

  call({
    Query$AllDocuments$documents? documents,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllDocuments$documents<TRes> get documents =>
      CopyWith$Query$AllDocuments$documents.stub(_res);
}

const documentNodeQueryAllDocuments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllDocuments'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'documents'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'all'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'no'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'date'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'attachment'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'documentType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'documentName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'verboseName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$AllDocuments _parserFn$Query$AllDocuments(Map<String, dynamic> data) =>
    Query$AllDocuments.fromJson(data);
typedef OnQueryComplete$Query$AllDocuments = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AllDocuments?,
);

class Options$Query$AllDocuments
    extends graphql.QueryOptions<Query$AllDocuments> {
  Options$Query$AllDocuments({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllDocuments? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AllDocuments? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$AllDocuments(data),
                  ),
          onError: onError,
          document: documentNodeQueryAllDocuments,
          parserFn: _parserFn$Query$AllDocuments,
        );

  final OnQueryComplete$Query$AllDocuments? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AllDocuments
    extends graphql.WatchQueryOptions<Query$AllDocuments> {
  WatchOptions$Query$AllDocuments({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AllDocuments? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryAllDocuments,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllDocuments,
        );
}

class FetchMoreOptions$Query$AllDocuments extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllDocuments(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAllDocuments,
        );
}

extension ClientExtension$Query$AllDocuments on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllDocuments>> query$AllDocuments(
          [Options$Query$AllDocuments? options]) async =>
      await this.query(options ?? Options$Query$AllDocuments());
  graphql.ObservableQuery<Query$AllDocuments> watchQuery$AllDocuments(
          [WatchOptions$Query$AllDocuments? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AllDocuments());
  void writeQuery$AllDocuments({
    required Query$AllDocuments data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAllDocuments)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllDocuments? readQuery$AllDocuments({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAllDocuments)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AllDocuments.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$AllDocuments> useQuery$AllDocuments(
        [Options$Query$AllDocuments? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$AllDocuments());
graphql.ObservableQuery<Query$AllDocuments> useWatchQuery$AllDocuments(
        [WatchOptions$Query$AllDocuments? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$AllDocuments());

class Query$AllDocuments$Widget
    extends graphql_flutter.Query<Query$AllDocuments> {
  Query$AllDocuments$Widget({
    widgets.Key? key,
    Options$Query$AllDocuments? options,
    required graphql_flutter.QueryBuilder<Query$AllDocuments> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$AllDocuments(),
          builder: builder,
        );
}

class Query$AllDocuments$documents {
  Query$AllDocuments$documents({
    this.all,
    this.$__typename = 'DocumentsQuery',
  });

  factory Query$AllDocuments$documents.fromJson(Map<String, dynamic> json) {
    final l$all = json['all'];
    final l$$__typename = json['__typename'];
    return Query$AllDocuments$documents(
      all: (l$all as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$AllDocuments$documents$all.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AllDocuments$documents$all?>? all;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$all = all;
    _resultData['all'] = l$all?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$all = all;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$all == null ? null : Object.hashAll(l$all.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllDocuments$documents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$all = all;
    final lOther$all = other.all;
    if (l$all != null && lOther$all != null) {
      if (l$all.length != lOther$all.length) {
        return false;
      }
      for (int i = 0; i < l$all.length; i++) {
        final l$all$entry = l$all[i];
        final lOther$all$entry = lOther$all[i];
        if (l$all$entry != lOther$all$entry) {
          return false;
        }
      }
    } else if (l$all != lOther$all) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllDocuments$documents
    on Query$AllDocuments$documents {
  CopyWith$Query$AllDocuments$documents<Query$AllDocuments$documents>
      get copyWith => CopyWith$Query$AllDocuments$documents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllDocuments$documents<TRes> {
  factory CopyWith$Query$AllDocuments$documents(
    Query$AllDocuments$documents instance,
    TRes Function(Query$AllDocuments$documents) then,
  ) = _CopyWithImpl$Query$AllDocuments$documents;

  factory CopyWith$Query$AllDocuments$documents.stub(TRes res) =
      _CopyWithStubImpl$Query$AllDocuments$documents;

  TRes call({
    List<Query$AllDocuments$documents$all?>? all,
    String? $__typename,
  });
  TRes all(
      Iterable<Query$AllDocuments$documents$all?>? Function(
              Iterable<
                  CopyWith$Query$AllDocuments$documents$all<
                      Query$AllDocuments$documents$all>?>?)
          _fn);
}

class _CopyWithImpl$Query$AllDocuments$documents<TRes>
    implements CopyWith$Query$AllDocuments$documents<TRes> {
  _CopyWithImpl$Query$AllDocuments$documents(
    this._instance,
    this._then,
  );

  final Query$AllDocuments$documents _instance;

  final TRes Function(Query$AllDocuments$documents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? all = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllDocuments$documents(
        all: all == _undefined
            ? _instance.all
            : (all as List<Query$AllDocuments$documents$all?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes all(
          Iterable<Query$AllDocuments$documents$all?>? Function(
                  Iterable<
                      CopyWith$Query$AllDocuments$documents$all<
                          Query$AllDocuments$documents$all>?>?)
              _fn) =>
      call(
          all: _fn(_instance.all?.map((e) => e == null
              ? null
              : CopyWith$Query$AllDocuments$documents$all(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$AllDocuments$documents<TRes>
    implements CopyWith$Query$AllDocuments$documents<TRes> {
  _CopyWithStubImpl$Query$AllDocuments$documents(this._res);

  TRes _res;

  call({
    List<Query$AllDocuments$documents$all?>? all,
    String? $__typename,
  }) =>
      _res;

  all(_fn) => _res;
}

class Query$AllDocuments$documents$all {
  Query$AllDocuments$documents$all({
    this.no,
    this.date,
    this.attachment,
    this.documentType,
    this.$__typename = 'GeneralDocumentType',
  });

  factory Query$AllDocuments$documents$all.fromJson(Map<String, dynamic> json) {
    final l$no = json['no'];
    final l$date = json['date'];
    final l$attachment = json['attachment'];
    final l$documentType = json['documentType'];
    final l$$__typename = json['__typename'];
    return Query$AllDocuments$documents$all(
      no: (l$no as String?),
      date: (l$date as String?),
      attachment: (l$attachment as String?),
      documentType: l$documentType == null
          ? null
          : Query$AllDocuments$documents$all$documentType.fromJson(
              (l$documentType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? no;

  final String? date;

  final String? attachment;

  final Query$AllDocuments$documents$all$documentType? documentType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$no = no;
    _resultData['no'] = l$no;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$attachment = attachment;
    _resultData['attachment'] = l$attachment;
    final l$documentType = documentType;
    _resultData['documentType'] = l$documentType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$no = no;
    final l$date = date;
    final l$attachment = attachment;
    final l$documentType = documentType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$no,
      l$date,
      l$attachment,
      l$documentType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllDocuments$documents$all) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$no = no;
    final lOther$no = other.no;
    if (l$no != lOther$no) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$attachment = attachment;
    final lOther$attachment = other.attachment;
    if (l$attachment != lOther$attachment) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (l$documentType != lOther$documentType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllDocuments$documents$all
    on Query$AllDocuments$documents$all {
  CopyWith$Query$AllDocuments$documents$all<Query$AllDocuments$documents$all>
      get copyWith => CopyWith$Query$AllDocuments$documents$all(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllDocuments$documents$all<TRes> {
  factory CopyWith$Query$AllDocuments$documents$all(
    Query$AllDocuments$documents$all instance,
    TRes Function(Query$AllDocuments$documents$all) then,
  ) = _CopyWithImpl$Query$AllDocuments$documents$all;

  factory CopyWith$Query$AllDocuments$documents$all.stub(TRes res) =
      _CopyWithStubImpl$Query$AllDocuments$documents$all;

  TRes call({
    String? no,
    String? date,
    String? attachment,
    Query$AllDocuments$documents$all$documentType? documentType,
    String? $__typename,
  });
  CopyWith$Query$AllDocuments$documents$all$documentType<TRes> get documentType;
}

class _CopyWithImpl$Query$AllDocuments$documents$all<TRes>
    implements CopyWith$Query$AllDocuments$documents$all<TRes> {
  _CopyWithImpl$Query$AllDocuments$documents$all(
    this._instance,
    this._then,
  );

  final Query$AllDocuments$documents$all _instance;

  final TRes Function(Query$AllDocuments$documents$all) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? no = _undefined,
    Object? date = _undefined,
    Object? attachment = _undefined,
    Object? documentType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllDocuments$documents$all(
        no: no == _undefined ? _instance.no : (no as String?),
        date: date == _undefined ? _instance.date : (date as String?),
        attachment: attachment == _undefined
            ? _instance.attachment
            : (attachment as String?),
        documentType: documentType == _undefined
            ? _instance.documentType
            : (documentType as Query$AllDocuments$documents$all$documentType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$AllDocuments$documents$all$documentType<TRes>
      get documentType {
    final local$documentType = _instance.documentType;
    return local$documentType == null
        ? CopyWith$Query$AllDocuments$documents$all$documentType.stub(
            _then(_instance))
        : CopyWith$Query$AllDocuments$documents$all$documentType(
            local$documentType, (e) => call(documentType: e));
  }
}

class _CopyWithStubImpl$Query$AllDocuments$documents$all<TRes>
    implements CopyWith$Query$AllDocuments$documents$all<TRes> {
  _CopyWithStubImpl$Query$AllDocuments$documents$all(this._res);

  TRes _res;

  call({
    String? no,
    String? date,
    String? attachment,
    Query$AllDocuments$documents$all$documentType? documentType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$AllDocuments$documents$all$documentType<TRes>
      get documentType =>
          CopyWith$Query$AllDocuments$documents$all$documentType.stub(_res);
}

class Query$AllDocuments$documents$all$documentType {
  Query$AllDocuments$documents$all$documentType({
    this.documentName,
    this.verboseName,
    this.$__typename = 'DocumentType',
  });

  factory Query$AllDocuments$documents$all$documentType.fromJson(
      Map<String, dynamic> json) {
    final l$documentName = json['documentName'];
    final l$verboseName = json['verboseName'];
    final l$$__typename = json['__typename'];
    return Query$AllDocuments$documents$all$documentType(
      documentName: (l$documentName as String?),
      verboseName: (l$verboseName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? documentName;

  final String? verboseName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$documentName = documentName;
    _resultData['documentName'] = l$documentName;
    final l$verboseName = verboseName;
    _resultData['verboseName'] = l$verboseName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$documentName = documentName;
    final l$verboseName = verboseName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$documentName,
      l$verboseName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllDocuments$documents$all$documentType) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$documentName = documentName;
    final lOther$documentName = other.documentName;
    if (l$documentName != lOther$documentName) {
      return false;
    }
    final l$verboseName = verboseName;
    final lOther$verboseName = other.verboseName;
    if (l$verboseName != lOther$verboseName) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AllDocuments$documents$all$documentType
    on Query$AllDocuments$documents$all$documentType {
  CopyWith$Query$AllDocuments$documents$all$documentType<
          Query$AllDocuments$documents$all$documentType>
      get copyWith => CopyWith$Query$AllDocuments$documents$all$documentType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllDocuments$documents$all$documentType<TRes> {
  factory CopyWith$Query$AllDocuments$documents$all$documentType(
    Query$AllDocuments$documents$all$documentType instance,
    TRes Function(Query$AllDocuments$documents$all$documentType) then,
  ) = _CopyWithImpl$Query$AllDocuments$documents$all$documentType;

  factory CopyWith$Query$AllDocuments$documents$all$documentType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AllDocuments$documents$all$documentType;

  TRes call({
    String? documentName,
    String? verboseName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllDocuments$documents$all$documentType<TRes>
    implements CopyWith$Query$AllDocuments$documents$all$documentType<TRes> {
  _CopyWithImpl$Query$AllDocuments$documents$all$documentType(
    this._instance,
    this._then,
  );

  final Query$AllDocuments$documents$all$documentType _instance;

  final TRes Function(Query$AllDocuments$documents$all$documentType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? documentName = _undefined,
    Object? verboseName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllDocuments$documents$all$documentType(
        documentName: documentName == _undefined
            ? _instance.documentName
            : (documentName as String?),
        verboseName: verboseName == _undefined
            ? _instance.verboseName
            : (verboseName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllDocuments$documents$all$documentType<TRes>
    implements CopyWith$Query$AllDocuments$documents$all$documentType<TRes> {
  _CopyWithStubImpl$Query$AllDocuments$documents$all$documentType(this._res);

  TRes _res;

  call({
    String? documentName,
    String? verboseName,
    String? $__typename,
  }) =>
      _res;
}
