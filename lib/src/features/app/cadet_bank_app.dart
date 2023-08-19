import 'package:cadetbank/src/core/router/routers.dart';
import 'package:flutter/material.dart';

class CadetBankApp extends StatelessWidget {
  const CadetBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: configRouters(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
