import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zkare/provider/auth_provider.dart';
import 'package:zkare/provider/polygon_id_provider.dart';
import 'package:zkare/provider/push_protocol_services.dart';
import 'package:zkare/screen/auth/splash_screen.dart';
//import 'package:polygonid_flutter_sdk/sdk/polygon_id_sdk.dart';

void main() {
  // await PolygonIdSdk.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider()),
        ChangeNotifierProvider<PushProtocolHelperService>(
            create: (_) => PushProtocolHelperService()),
        ChangeNotifierProvider<PolygonServiceHelperProvider>(
            create: (_) => PolygonServiceHelperProvider()),
      ],
      child: const MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
