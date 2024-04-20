import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pmm_garden/core/services/graphql.service.dart';
import 'package:pmm_garden/ui/views/auth/auth.view.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final graphQLService = ref.watch(graphQLServiceProvider);
    final app = MaterialApp(
      title: 'PMM-GARDEN',
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('uk'),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const AuthScreen(),
    );
    return GraphQLProvider(client: graphQLService.clientNotifier, child: app);
  }
}
